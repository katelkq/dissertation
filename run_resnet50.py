from models.resnet50.resnet50 import resnet50
from datasets.imagenet import ImageNet

import torch
from torch.utils.data import Dataset
from torchvision import transforms
import matplotlib.pyplot as plt

import torch
import torch.nn as nn
import torch.optim
import torch.utils.data
import torch.utils.data.distributed
import torchvision.transforms as transforms

dataset = ImageNet(
    root='./data/imagenet',
    split='val',
    transform=transforms.Compose([
        transforms.Resize(256),
        transforms.CenterCrop(224),
        transforms.ToTensor(),
        transforms.Normalize(mean=[0.485, 0.456, 0.406], std=[0.229, 0.224, 0.225])
    ])
)

model = resnet50()

dataloader = torch.utils.data.DataLoader(
    dataset=dataset
)

def run(val_loader, model):
    # switch to evaluate mode
    model.eval()

    with torch.no_grad():
        for i, (images, target) in enumerate(val_loader):

            # compute output
            output = model(images)

            if (i % 100 == 0):
                print(i)

    pass

run(dataloader, model)
