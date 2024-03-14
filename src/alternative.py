import time

import torch
from torch.utils.data import DataLoader
from datasets.random import RandomDataGenerator
from torchvision import models

from copy import deepcopy

# rough idea: collect all the blocks that you want to run; then run everything sequentially

def get_input_shape(module, input, output):
    input_shapes.append((input[0].shape))

resnet50 = models.resnet50(weights=models.ResNet50_Weights.IMAGENET1K_V1)
retinanet = models.detection.retinanet_resnet50_fpn(weights = models.detection.RetinaNet_ResNet50_FPN_Weights)
unet = torch.hub.load('mateuszbuda/brain-segmentation-pytorch', 'unet', in_channels=3, out_channels=1, init_features=32, pretrained=True)
vit = models.vit_b_16(weights=models.ViT_B_16_Weights)

test_blocks = []
target_blocks = []

for module in resnet50.children():
    if type(module) == torch.nn.modules.container.Sequential:
        for block in module:
            test_blocks.append(block)
            target_blocks.append(deepcopy(block))

for module in unet.children():
    if type(module) == torch.nn.modules.container.Sequential:
        test_blocks.append(module)
        target_blocks.append(deepcopy(module))

for encoder_layer in vit.encoder.layers.children():
    test_blocks.append(encoder_layer)
    target_blocks.append(deepcopy(encoder_layer))

input_shapes = []

for block in test_blocks:
    block.register_forward_hook(get_input_shape)

_ = resnet50(torch.ones(1, 3, 224, 224))
_ = unet(torch.ones(1, 3, 256, 256))
_ = vit(torch.ones(1, 3, 224, 224))


def main():

    for model, input_shape in zip(target_blocks, input_shapes):

        print(model)
        print(input_shape[1:])

        dataset = RandomDataGenerator(shape=tuple(input_shape[1:]), num_samples=100)
        dataloader = DataLoader(dataset=dataset, batch_size=1)
        
        # start of the inference loop
        model.eval()

        with torch.no_grad():
            for i, (inputs, targets) in enumerate(dataloader):
                # print(profile_macs(model, inputs))

                time.sleep(1)
                outputs = model(inputs)
                time.sleep(0.5)

        time.sleep(2)

if __name__ == '__main__':
    main()
