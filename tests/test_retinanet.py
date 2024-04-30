from src.models.retinanet import retinanet_resnet50_fpn as retinanet

import torch

def test_model_initialization():
    assert retinanet()

def test_weights_initialization():
    model1 = retinanet()
    model1.randomize_weights(seed=42)

    model2 = retinanet()
    model2.randomize_weights(seed=42)

    for param1, param2 in zip(model1.parameters(), model2.parameters()):
        assert torch.allclose(param1, param2)

def test_inference_behavior():
    pass
