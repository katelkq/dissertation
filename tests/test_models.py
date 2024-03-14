from src.models.resnet import resnet50, ResNet50_Weights
from src.models.unet import unet
from src.models.vision_transformer import vit_b_16, ViT_B_16_Weights
from src.models.detection.retinanet import retinanet_resnet50_fpn, RetinaNet_ResNet50_FPN_Weights

def test_resnet():
    model = resnet50(weights=ResNet50_Weights.DEFAULT)
    assert model

def test_retinanet():
    model = retinanet_resnet50_fpn(weights=RetinaNet_ResNet50_FPN_Weights.DEFAULT)
    assert model

def test_vit():
    model = vit_b_16(weights=ViT_B_16_Weights.DEFAULT)
    assert model

def test_unet():
    model = unet()
    assert model
    