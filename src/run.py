from config import MODEL_SPECS
from datasets.random import RandomDataset

import argparse
import time

import torch
from torch.utils.data import DataLoader


def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--model',
        type=str,
        choices=MODEL_SPECS.keys(),
        required=True,
        help='the type of benchmark model to initialize'
    )

    parser.add_argument(
        '--input-shape',
        type=int,
        nargs='+',
        help='the shape of each sample in the random dataset',
    )
    
    parser.add_argument(
        '--num-samples',
        type=int,
        default=100,
        help='the number of samples to generate for the random dataset',
    )
    
    parser.add_argument(
        '--batch-size',
        type=int,
        default=1,
        help='the batch size of the dataloader',
    )

    parser.add_argument(
        '--seed',
        type=int,
        default=42,
        help='the random seed value to use',
    )

    args = parser.parse_args()
    return args


def initialize_model(args):
    specs = MODEL_SPECS[args.model]
    get_model = specs['factory-method']

    model = get_model()
    model.randomize_weights(seed=args.seed)

    return model


def initialize_dataset(args):
    specs = MODEL_SPECS[args.model]
    input_shape = specs['input-shape']

    dataset = RandomDataset(input_shape=input_shape, num_samples=args.num_samples, seed=args.seed)

    return dataset


def main():
    args = get_args()

    model = initialize_model(args)
    dataset = initialize_dataset(args)

    dataloader = DataLoader(dataset=dataset, batch_size=args.batch_size)

    model.eval()

    with torch.no_grad():
        for _, sample in enumerate(dataloader):

            time.sleep(1)
            model(sample)
            time.sleep(0.5)


if __name__ == '__main__':
    main()
