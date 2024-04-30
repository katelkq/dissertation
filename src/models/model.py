import torch
import torch.nn as nn

class Model(nn.Module):
    def __init__(self):
        super(Model, self).__init__()

    def randomize_weights(self, seed=None):
        if seed is not None:
            torch.manual_seed(seed)

        def init_weights(m):
            for param in m.parameters():
                nn.init.uniform_(param, -1, 1)

            '''if isinstance(m, nn.Linear):
                nn.init.uniform_(m.weight, -1, 1)
                nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.Conv1d) or isinstance(m, nn.Conv2d) or isinstance(m, nn.Conv3d):
                nn.init.uniform_(m.weight, -1, 1)
                if m.bias is not None:
                    nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.ConvTranspose1d) or isinstance(m, nn.ConvTranspose2d) or isinstance(m, nn.ConvTranspose3d):
                nn.init.uniform_(m.weight, -1, 1)
                if m.bias is not None:
                    nn.init.uniform_(m.bias, -1, 1)
                
            elif isinstance(m, nn.BatchNorm1d) or isinstance(m, nn.BatchNorm2d) or isinstance(m, nn.BatchNorm3d):
                nn.init.uniform_(m.weight, -1, 1)
                nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.LayerNorm):
                nn.init.uniform_(m.weight, -1, 1)
                nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.MultiheadAttention):
                pass'''

        self.apply(init_weights)
