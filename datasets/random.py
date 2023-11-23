import torch
from torch.utils.data import Dataset

class RandomDataGenerator(Dataset):
    def __init__(self, size=(10, 10), num_samples=100):
        self.size = size
        self.num_samples = num_samples

    def __len__(self):
        return self.num_samples

    def __getitem__(self, index):
        # on-demand generation, from a uniform distribution on the interval [0,1)
        random_data = torch.randn(self.size)
        return (random_data, random_data)
