from typing import Any, Callable, List, Optional, Type, Union

import torch
import torch.nn as nn

# MaxPool
'''
torch.nn.MaxPool2d(kernel_size, stride=None, padding=0, dilation=1, return_indices=False, ceil_mode=False)
'''
def maxpool2d(*, kernel_size: int = 3, **kwargs: Any) -> nn.MaxPool2d:
    return nn.MaxPool2d(kernel_size=kernel_size, **kwargs)

# AvgPool
'''
torch.nn.AvgPool2d(kernel_size, stride=None, padding=0, ceil_mode=False, count_include_pad=True, divisor_override=None)
'''
def avgpool2d(*, kernel_size: int = 3, **kwargs: Any) -> nn.AvgPool2d:
    return nn.AvgPool2d(kernel_size=kernel_size, **kwargs)

# Linear
'''
torch.nn.Linear(in_features, out_features, bias=True, device=None, dtype=None)
'''
def linear(*, in_features: int = 64, out_features: int = 8, **kwargs: Any) -> nn.Linear:
    layer = nn.Linear(in_features=in_features, out_features=out_features, **kwargs)
    nn.init.normal_(layer.weight)
    nn.init.normal_(layer.bias)
    return layer

# Convolutional layer (1D)
'''
torch.nn.Conv1d(in_channels, out_channels, kernel_size, stride=1, padding=0, dilation=1, groups=1, bias=True, padding_mode='zeros', device=None, dtype=None)
'''
def conv1d(*, in_channels: int = 3, out_channels: int = 16, kernel_size: int = 3, **kwargs: Any) -> nn.Conv1d:
    layer = nn.Conv1d(in_channels=in_channels, out_channels=out_channels, kernel_size=kernel_size, **kwargs)
    nn.init.normal_(layer.weight)
    nn.init.normal_(layer.bias)
    return layer

# Convolutional layer (2D)
'''
torch.nn.Conv2d(in_channels, out_channels, kernel_size, stride=1, padding=0, dilation=1, groups=1, bias=True, padding_mode='zeros', device=None, dtype=None)
'''
def conv2d(*, in_channels: int = 3, out_channels: int = 16, kernel_size: int = 3, **kwargs: Any) -> nn.Conv2d:
    layer = nn.Conv2d(in_channels=in_channels, out_channels=out_channels, kernel_size=kernel_size, **kwargs)
    nn.init.normal_(layer.weight)
    nn.init.normal_(layer.bias)
    return layer

# Deconvolution (2D)
'''
torch.nn.ConvTranspose2d(in_channels, out_channels, kernel_size, stride=1, padding=0, output_padding=0, groups=1, bias=True, dilation=1, padding_mode='zeros', device=None, dtype=None)
'''
def deconv2d(*, in_channels: int = 16, out_channels: int = 3, kernel_size: int = 3, **kwargs: Any) -> nn.ConvTranspose2d:
    return nn.ConvTranspose2d(in_channels=in_channels, out_channels=out_channels, kernel_size=kernel_size, **kwargs)

# Unpooling: sus implementation?
'''
torch.nn.MaxUnpool2d(kernel_size, stride=None, padding=0)
'''

# ReLU activation
'''
torch.nn.ReLU(inplace=False)
'''
def relu(**kwargs: Any) -> nn.ReLU:
    return nn.ReLU(**kwargs)

# Softmax activation
'''
torch.nn.Softmax(dim=None)
'''
def softmax(*, dim: int = 1, **kwargs: Any) -> nn.Softmax:
    return nn.Softmax(dim=dim, **kwargs)

