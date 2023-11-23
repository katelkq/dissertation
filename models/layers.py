import torch
import torch.nn as nn

# Maxpooling
maxpool_layer = nn.MaxPool2d(kernel_size=2, stride=2)  # Example with a 2x2 kernel and stride

# Avgpooling
avgpool_layer = nn.AvgPool2d(kernel_size=2, stride=2)  # Example with a 2x2 kernel and stride

# Linear layer
linear_layer = nn.Linear(in_features=100, out_features=50)  # Example with 100 input features and 50 output features

# Convolutional layer (2D)
conv2d_layer = nn.Conv2d(in_channels=3, out_channels=16, kernel_size=3, stride=1, padding=1)
# Example: 3 input channels, 16 output channels, 3x3 kernel size, 1 stride, and 1 padding

# Convolutional layer (1D)
conv1d_layer = nn.Conv1d(in_channels=1, out_channels=16, kernel_size=3, stride=1, padding=1)
# Example: 1 input channel, 16 output channels, 3 kernel size, 1 stride, and 1 padding

# Deconvolution (2D)
deconv2d_layer = nn.ConvTranspose2d(in_channels=16, out_channels=3, kernel_size=3, stride=2, padding=1, output_padding=1)
# Example: 16 input channels, 3 output channels, 3x3 kernel size, 2 stride, 1 padding, 1 output padding

# Unpooling
# There is no direct nn module for unpooling in PyTorch, so you'd typically use indices obtained from MaxPool2d
# and an upsampling operation to perform unpooling.

# ReLU activation
relu = nn.ReLU()

# Softmax activation
softmax = nn.Softmax(dim=1)  # Example with dim=1 (apply softmax along the specified dimension)


import torch
import torch.nn as nn
import torch.nn.functional as F

class TransformerBlock(nn.Module):
    def __init__(self, embed_size, heads):
        super(TransformerBlock, self).__init__()
        self.attention = nn.MultiheadAttention(embed_size, heads)
        self.norm1 = nn.LayerNorm(embed_size)
        self.norm2 = nn.LayerNorm(embed_size)
        self.feed_forward = nn.Sequential(
            nn.Linear(embed_size, 4 * embed_size),
            nn.ReLU(),
            nn.Linear(4 * embed_size, embed_size)
        )

    def forward(self, x):
        attended, _ = self.attention(x, x, x)
        x = self.norm1(attended + x)
        fed_forward = self.feed_forward(x)
        x = self.norm2(fed_forward + x)
        return x

class VisionTransformer(nn.Module):
    def __init__(self, image_size, patch_size, num_classes, embed_size, depth, heads):
        super(VisionTransformer, self).__init__()
        assert image_size % patch_size == 0, "Image dimensions must be divisible by the patch size."
        num_patches = (image_size // patch_size) ** 2
        self.patch_embed = nn.Conv2d(3, embed_size, kernel_size=patch_size, stride=patch_size)
        self.cls_token = nn.Parameter(torch.randn(1, 1, embed_size))
        self.pos_embedding = nn.Parameter(torch.randn(1, num_patches + 1, embed_size))
        self.transformer_blocks = nn.ModuleList([
            TransformerBlock(embed_size, heads) for _ in range(depth)
        ])
        self.mlp_head = nn.Linear(embed_size, num_classes)

    def forward(self, x):
        B = x.size(0)
        x = self.patch_embed(x)
        x = x.flatten(2).transpose(1, 2)
        cls_tokens = self.cls_token.expand(B, -1, -1)
        x = torch.cat((cls_tokens, x), dim=1)
        x = x + self.pos_embedding[:, :(x.size(1)), :]
        for transformer in self.transformer_blocks:
            x = transformer(x)
        x = x.mean(dim=1)  # Global average pooling
        x = self.mlp_head(x)
        return x

class PatchEmbedding(nn.Module):
    def __init__(self, image_size, patch_size, embed_size):
        super(PatchEmbedding, self).__init__()
        assert image_size % patch_size == 0, "Image dimensions must be divisible by the patch size."
        self.patch_embed = nn.Conv2d(3, embed_size, kernel_size=patch_size, stride=patch_size)

    def forward(self, x):
        x = self.patch_embed(x)
        x = x.flatten(2).transpose(1, 2)
        return x

