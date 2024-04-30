from src.models.unet import unet

import torch

def test_model_initialization():
    assert unet()

def test_weights_initialization():
    model1 = unet()
    model1.randomize_weights(seed=42)

    model2 = unet()
    model2.randomize_weights(seed=42)

    for param1, param2 in zip(model1.parameters(), model2.parameters()):
        assert torch.allclose(param1, param2)

def test_inference_behavior():
    pass
