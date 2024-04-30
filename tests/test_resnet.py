from src.models.resnet import resnet50

import torch

def test_model_initialization():
    assert resnet50()

def test_weights_initialization():
    model1 = resnet50()
    model1.randomize_weights(seed=42)

    model2 = resnet50()
    model2.randomize_weights(seed=42)

    for param1, param2 in zip(model1.parameters(), model2.parameters()):
        assert torch.allclose(param1, param2)

def test_inference_behavior():
    pass
