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