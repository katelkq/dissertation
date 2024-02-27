import argparse
import time

from torchprofile import profile_macs

from typing import Tuple

import torch
from torch.utils.data import DataLoader

from torchvision.models.detection import retinanet_resnet50_fpn, RetinaNet_ResNet50_FPN_Weights
from torchvision.datasets import CocoDetection

from models.layers import maxpool2d, avgpool2d, linear, conv1d, conv2d, deconv2d, relu, softmax
from models.resnet import resnet50, ResNet50_Weights
from models.unet import unet, UNet_Weights
from models.vision_transformer import vit_b_16, ViT_B_16_Weights

from datasets.imagenet import ImageNet
from datasets.lgg import BrainSegmentationDataset
from datasets.random import RandomDataGenerator

SUPPORTED_LAYERS = {
    'maxpool2d': {
        'constructor': maxpool2d,
        'kwargs': ['kernel_size'],
        'input-shape': (32,32)
    },
    'avgpool2d': {
        'constructor': avgpool2d,
        'kwargs': ['kernel_size'],
        'input-shape': (32,32)
    },
    'linear': {
        'constructor': linear,
        'kwargs': ['in_features', 'out_features'],
        'input-shape': (64,64)
    },
    'conv1d': {
        'constructor': conv1d,
        'kwargs': ['in_channels', 'out_channels', 'kernel_size'],
        'input-shape': (3,64)
    },
    'conv2d': {
        'constructor': conv2d,
        'kwargs': ['in_channels', 'out_channels', 'kernel_size'],
        'input-shape': (3,64,64)
    },
    'deconv2d': {
        'constructor': deconv2d,
        'kwargs': ['in_channels', 'out_channels', 'kernel_size'],
        'input-shape': (16,64,64)
    },
    'relu': {
        'constructor': relu,
        'kwargs': [],
        'input-shape': (16,64,64)
    },
    'softmax': {
        'constructor': softmax,
        'kwargs': ['dim'],
        'input-shape': (16,64,64)
    },
}

SUPPORTED_MODELS = {
    # include: model constructors, weights, input dimensions, preprocessing 

    # TODO: transformer, vision transformer, patch embed

    'resnet50': {
        'constructor': resnet50,
        'dataset': 'imagenet',
        'weights': ResNet50_Weights.DEFAULT,
        'input-shape': (3,224,224)
    },
    'unet': {
        'constructor': unet,
        'dataset': 'lgg',
        'weights': UNet_Weights.DEFAULT,
        'input-shape': (3,256,256)
    },
    'vit': {
        'constructor': vit_b_16,
        'dataset': 'imagenet',
        'weights': ViT_B_16_Weights.DEFAULT,
        'input-shape': (3,224,224)
    },
    'retinanet': {
        'constructor': retinanet_resnet50_fpn,
        'dataset': 'coco',
        'weights': RetinaNet_ResNet50_FPN_Weights.DEFAULT,
        'input-shape': (3,256,256)
    }
}

SUPPORTED_DATASETS = {
    'imagenet': {
        'constructor': ImageNet,
        'default-path': './data/imagenet'
    },
    'lgg': {
        'constructor': BrainSegmentationDataset,
        'default-path': './data/kaggle_3m'
    },
    'coco': {
        'constructor': CocoDetection,
        'default-path': './data/coco'
    }
}


def get_args():
    parser = argparse.ArgumentParser()
    """
    device, model, 
    random-weights, weights-path, store-weights
    random-dataset, dataset-path, store-dataset
    """
    """
    model
    [will enable stored mapping to input dimensions]

    [if pregenerated, fetch weights from path, else generate random weight and store if needed]
    pre_generated weights (do we need to find a file?)
    path to weights
    store_weights

    [if pregenerated, fetch dataset from path, else generate random dataset and store if needed]
    random_dataset
    dataset-length

    batch_size
    dataset-path
    
    """
    parser.add_argument(
        '--device',
        type=str,
        default='cpu',
        help='device for training (default: cpu)',
    )
    parser.add_argument(
        '--model',
        type=str,
        choices=set().union(SUPPORTED_LAYERS.keys(), SUPPORTED_MODELS.keys()),
        required=True,
        help='name of the model to use'
    )
    parser.add_argument(
        '--pretrained',
        action='store_true',
        help='whether to load pretrained weights for the model',
    )
    parser.add_argument(
        '--weights-path',
        type=str,
        help='path to the weight file (if applicable)',
    )
    parser.add_argument(
        '--real-data',
        action='store_true',
        help='whether to feed a real dataset to the model',
    )
    parser.add_argument(
        '--batch-size',
        type=int,
        default=1,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--num-samples',
        type=int,
        default=100,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--data-path',
        type=str,
        help='whether to generate random dataset to feed to the model',
    )
    parser.add_argument(
        '--kernel-size',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--in-features',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--out-features',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--in-channels',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--out-channels',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--dim',
        type=int,
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )
    parser.add_argument(
        '--input-shape',
        type=int,
        nargs='+',
        help='if you want to generate random dataset, how many samples do you want to generate?',
    )

    args = parser.parse_args()
    return args


def initialize_model(args, device):
    if args.model in SUPPORTED_MODELS.keys():
        model_info = SUPPORTED_MODELS[args.model]

        if args.pretrained:
            model = model_info['constructor'](weights=model_info['weights'])
        else:
            model = model_info['constructor']()

    else:
        model_info = SUPPORTED_LAYERS[args.model]
        kwargs = {key: vars(args)[key] for key in model_info['kwargs'] if vars(args)[key]}
        print(kwargs)
        if kwargs:
            model = model_info['constructor'](**kwargs)
        else:
            model = model_info['constructor']()

    model.to(device)
    return model


def initialize_dataloader(args, device):
    if args.model in SUPPORTED_MODELS.keys():
        model_info = SUPPORTED_MODELS[args.model]

        if args.real_data:
            dataset_info = SUPPORTED_DATASETS[model_info['dataset']]
            dataset = dataset_info['constructor'](root=args.data_path if args.data_path else dataset_info['default-path'], 
                                                  transform=model_info['weights'].transforms() if callable(model_info['weights'].transforms) else model_info['weights'].transforms)
        else:
            dataset = RandomDataGenerator(shape=model_info['input-shape'], num_samples=args.num_samples)
    else:
        model_info = SUPPORTED_LAYERS[args.model]

        if args.input_shape:
            dataset = RandomDataGenerator(shape=tuple(args.input_shape), num_samples=args.num_samples)
        else:
            dataset = RandomDataGenerator(shape=model_info['input-shape'], num_samples=args.num_samples)

    dataloader = DataLoader(dataset=dataset, batch_size=args.batch_size)
    return dataloader


def main():
    args = get_args()

    if args.device == 'mps' and torch.backends.mps.is_available():
        print('MPS enabled.')

    device = torch.device(args.device)

    model = initialize_model(args, device)
    dataloader = initialize_dataloader(args, device)

    n = len(dataloader)
    freq = n // 10
    
    # start of the inference loop
    model.eval()

    with torch.no_grad():
        for i, (inputs, targets) in enumerate(dataloader):
            # do we want to move the input to another device?
            inputs = inputs.to(device)

            # print(profile_macs(model, inputs))

            time.sleep(1)
            outputs = model(inputs)
            time.sleep(0.5)


if __name__ == '__main__':
    main()
