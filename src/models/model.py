import torch
import torch.nn as nn

class Model(nn.Module):
    def __init__(self):
        super(Model, self).__init__()

    def randomize_weights(self, seed=None):
        if seed is not None:
            torch.manual_seed(seed)

        def init_weights(m):

            if isinstance(m, nn.Linear):
                nn.init.uniform_(m.weight, -1, 1)
                nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.Conv1d) or isinstance(m, nn.Conv2d) or isinstance(m, nn.Conv3d):
                nn.init.uniform_(m.weight, -1, 1)
                if m.bias is not None:
                    nn.init.uniform_(m.bias, -1, 1)

            elif isinstance(m, nn.ConvTranspose1d) or isinstance(m, nn.ConvTranspose2d) or isinstance(m, nn.ConvTranspose3d):
                nn.init.kaiming_normal_(m.weight, mode='fan_out', nonlinearity='relu')
                if m.bias is not None:
                    nn.init.uniform_(m.bias, -1, 1)
            
                
            elif isinstance(m, nn.BatchNorm2d):
                nn.init.constant_(m.weight, 1)
                nn.init.constant_(m.bias, 0)

            

        self.apply(init_weights)
