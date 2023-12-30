import torch
from torch.utils.data import Dataset

class RandomDataGenerator(Dataset):
    def __init__(self, shape=(10,10), num_samples=100):
        self.shape = shape
        self.num_samples = num_samples

    def __len__(self):
        return self.num_samples

    def __getitem__(self, index):
        # on-demand generation, from a uniform distribution on the interval [0,1)
        random_data = torch.randn(self.shape)
        return (random_data, random_data)
