'''
'''

from functools import partial

import torchvision.models as tvm

RANDOM_SEED = 47

MODEL_SPECS = {'resnet50': {},
               'retinanet': {},
               'unet': {},
               'vit-b-16': {}
               }

MODEL_SPECS_CHEAT = {'resnet50': {'constructor': partial(tvm.resnet50, weights=tvm.ResNet50_Weights.IMAGENET1K_V1),
                                  'input-size': },
                     'retinanet': {'constructor': partial(tvm.detection.retinanet_resnet50_fpn, weights=tvm.detection.RetinaNet_ResNet50_FPN_Weights.COCO_V1),
                                   'input-size': },
                     'unet': {},
                     'vit-b-16': {}
                    }