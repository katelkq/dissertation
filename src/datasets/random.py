import torch
from torch.utils.data import Dataset

class RandomDataset(Dataset):
    def __init__(self, input_shape, num_samples, seed=None):
        '''
        Args:
            input_shape (tuple): The shape of each sample tensor.
            num_samples (int): The number of samples to generate.
            random_seed (int, optional): The random seed for reproducibility.
        '''
        self.num_samples = num_samples
        
        if seed is not None:
            torch.manual_seed(seed)

        # Generate random data once upon initialization
        self.data = torch.randn(num_samples, *input_shape)

    def __len__(self):
        '''
        Returns the total number of samples in the dataset.
        '''
        return self.num_samples

    def __getitem__(self, idx):
        '''
        Retrieves the sample at the specified index from the dataset.

        Args:
            idx (int): The index of the sample to retrieve.

        Returns:
            torch.Tensor: The sample tensor at the specified index.
        '''
        return self.data[idx]
