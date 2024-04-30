from datasets.random import RandomDataset

import torch


def test_dataset_initialization():
    assert RandomDataset(input_shape=(3,224,224), num_samples=10, seed=42)

def test_dataset_generation():
    dataset1 = RandomDataset(input_shape=(3,224,224), num_samples=10, seed=42)
    dataset2 = RandomDataset(input_shape=(3,224,224), num_samples=10, seed=42)

    assert torch.allclose(dataset1.data, dataset2.data)
    