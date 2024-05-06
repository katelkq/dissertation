from models.resnet import resnet50
from models.retinanet import retinanet_resnet50_fpn as retinanet
from models.unet import unet

from models.mobilenet import mobilenet_v2 as mobilenet
from models.swin_transformer import swin_t, swin_s, swin_b
from models.vgg import vgg11, vgg13, vgg16, vgg19
from models.vision_transformer import vit_b_16, vit_b_32, vit_l_16, vit_l_32, vit_h_14


MODEL_SPECS = {'resnet50': {'factory-method': resnet50, 'input-shape': (3, 224, 224)},
               'retinanet': {'factory-method': retinanet, 'input-shape': (3, 224, 224)},
               'unet': {'factory-method': unet, 'input-shape': (3, 256, 256)},

               'mobilenet': {'factory-method': mobilenet, 'input-shape': (3, 224, 224)},

               'swint': {'factory-method': swin_t, 'input-shape': (3, 224, 224)},
               'swins': {'factory-method': swin_s, 'input-shape': (3, 224, 224)},
               'swinb': {'factory-method': swin_b, 'input-shape': (3, 224, 224)},

               'vgg11': {'factory-method': vgg11, 'input-shape': (3, 224, 224)},
               'vgg13': {'factory-method': vgg13, 'input-shape': (3, 224, 224)},
               'vgg16': {'factory-method': vgg16, 'input-shape': (3, 224, 224)},
               'vgg19': {'factory-method': vgg19, 'input-shape': (3, 224, 224)},

               'vitb16': {'factory-method': vit_b_16, 'input-shape': (3, 224, 224)},
               'vitb32': {'factory-method': vit_b_32, 'input-shape': (3, 224, 224)},
               'vitl16': {'factory-method': vit_l_16, 'input-shape': (3, 224, 224)},
               'vitl32': {'factory-method': vit_l_32, 'input-shape': (3, 224, 224)},
               'vith14': {'factory-method': vit_h_14, 'input-shape': (3, 224, 224)}
               }
