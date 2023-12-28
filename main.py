import argparse
import time

import torch
from torch.utils.data import DataLoader

from models.resnet import resnet50, ResNet50_Weights

from datasets.random import RandomDataGenerator
from datasets.imagenet import ImageNet

SUPPORTED_MODELS = {
    # include: model constructors, weights, input dimensions, preprocessing 
    'maxpool2d': {

    },
    'avgpool2d': {

    },
    'linear': {

    },
    'conv1d': {

    },
    'conv2d': {
        'in_channels': 2,
        'out_channels': 2,
        'kernel_size': 2
    },
    'deconv2d': {

    },
    'maxunpool2d': {},
    'relu': {},
    'softmax': {},

    # TODO: transformer, vision transformer, patch embed
    # actually, use the class name directly?
    'resnet50': {
        'constructor': resnet50,
        'dataset': 'imagenet',
        'weights': ResNet50_Weights.DEFAULT,
        'input-size': (3,224,224)
    },
    'unet': {

    },
    'vit': {

    }
}

SUPPORTED_DATASETS = {
    'imagenet': {
        'constructor': ImageNet,
        'transform': ResNet50_Weights.DEFAULT.transforms(),
    },
    'coco': ()
}


def get_args():
    parser = argparse.ArgumentParser()
    """
    device, model, 
    random-weights, weights-path, store-weights
    random-dataset, dataset-path, store-dataset
    
    torch.nn.Conv2d(in_channels, out_channels, kernel_size, stride=1, padding=0, dilation=1, groups=1, bias=True, padding_mode='zeros', device=None, dtype=None)

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
        choices=SUPPORTED_MODELS.keys(),
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
        help='whether to use a real dataset to feed to the model',
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

    args = parser.parse_args()
    return args


def initialize_model(args, device):
    model_info = SUPPORTED_MODELS[args.model]

    if args.pretrained:
        model = model_info['constructor']()
        # torch.nn.init.uniform_(model.weight)
    else:
        model = model_info['constructor'](weights=model_info['weights'])

    return model
    pass

def initialize_dataloader(args, device):
    model_info = SUPPORTED_MODELS[args.model]

    if args.real_data:
        dataset_info = SUPPORTED_DATASETS[model_info['dataset']]
        dataset = dataset_info['constructor'](root=args.data_path if args.data_path else dataset_info['default-path'], 
                                              transform=dataset_info['transform'])
    else:
        dataset = RandomDataGenerator(size=model_info['input-size'], num_samples=args.num_samples)

    dataloader = DataLoader(dataset=dataset, batch_size=args.batch_size)
    return dataloader
    pass


def main():
    args = get_args()

    if args.device == 'mps' and torch.backends.mps.is_available():
        print('MPS enabled.')

    device = torch.device(args.device)

    model = initialize_model(args, device)
    dataloader = initialize_dataloader(args, device)

    n = len(dataloader)
    freq = n // 20

    # start of the inference loop
    model.eval()
    with torch.no_grad():
        
        for i, (inputs, targets) in enumerate(dataloader):
            # do we want to move the input to another device?
            if i % freq == 0:
                print(f'[{i}/{n}]')

            time.sleep(1)
            outputs = model(inputs)
            time.sleep(1)

        


if __name__ == "__main__":
    main()