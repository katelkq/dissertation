"""






"""
from datetime import datetime
timestamp = '_'.join(str(datetime.now()).split('.')[0].split())

import logging
logging.basicConfig(filename=f'./logs/{timestamp}.log',
                    filemode='w',
                    level='INFO',
                    format='%(asctime)s,%(message)s')





import models.resnet
import datasets.random
from torch.utils.data import DataLoader

from typing import Any, Callable, Dict, Mapping
logging.info('script starts')

import torch

def initialize_model(model_name: str, random_weights: bool):
    """
    models
        - weights (weights and preprocessing methods, per pytorch definition?)
        - resnet
        - unet
        - layers
        - ...
    """
    match model_name:
        case 'resnet50':
            if random_weights:
                weights = models.resnet.ResNet50_Weights.DEFAULT
                model = models.resnet.resnet50(weights=weights)

            else:
                weights = models.resnet.ResNet50_Weights.DEFAULT
                preprocess = weights.transforms()
                model = models.resnet.resnet50(weights=weights)


        case _:
            raise KeyError('Model name not yet implemented.')
    return model, preprocess
    pass


def initialize_dataloader(dataset_name: str, random_inputs: bool, preprocess: Callable, batch_size):
    # batch size, 
    if random_inputs:
        dataset = datasets.random.RandomDataGenerator(size=(3,224,224), num_samples=100)
    else:
        raise KeyError('Not yet implemented.')
    
    dataloader = DataLoader(dataset=dataset)
    return dataloader
    pass


def initialize(model_name: str, dataset_name: str, random_weights: bool, random_inputs: bool, batch_size):
    model, preprocess = initialize_model(model_name, random_weights)
    dataloader = initialize_dataloader(dataset_name, random_inputs, preprocess, batch_size)

    return model, dataloader
    pass

# start of script
params = {'model_name': '',
          'dataset_name': ''}

# map from model name to required shape


model, dataloader = initialize(model_name='resnet50',
                               dataset_name='Imagenet',
                               random_weights=False,
                               random_inputs=True,
                               batch_size=1)

model.eval()
with torch.no_grad():
    for i, (inputs, targets) in enumerate(dataloader):
        # do we want to move the input to another device?
        logging.info('prediction starts')
        outputs = model(inputs)
        logging.info('prediction ends')

logging.info('script ends')
