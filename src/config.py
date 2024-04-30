from models.resnet import resnet50
from models.retinanet import retinanet_resnet50_fpn as retinanet
from models.unet import unet
from models.vision_transformer import vit_b_16


MODEL_SPECS = {'resnet50': {'factory-method': resnet50, 'input-shape': (3, 224, 224)},
               'retinanet': {'factory-method': retinanet, 'input-shape': (3, 224, 224)},
               'unet': {'factory-method': unet, 'input-shape': (3, 224, 224)},
               'vit-b-16': {'factory-method': vit_b_16, 'input-shape': (3, 224, 224)}
               }
