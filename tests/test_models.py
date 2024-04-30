from config import MODEL_SPECS

import torch
import pytest


model_names: list = ['resnet50', 'retinanet', 'unet', 'vit-b-16']


@pytest.mark.parametrize("model_name", [*model_names])
def test_model_initialization(model_name):
    specs = MODEL_SPECS[model_name]
    get_model = specs['factory-method']
    assert get_model()


@pytest.mark.parametrize("model_name", [*model_names])
def test_weights_initialization(model_name):
    specs = MODEL_SPECS[model_name]
    get_model = specs['factory-method']

    model1 = get_model()
    model1.randomize_weights(seed=42)

    model2 = get_model()
    model2.randomize_weights(seed=42)

    for param1, param2 in zip(model1.parameters(), model2.parameters()):
        assert torch.allclose(param1, param2)


@pytest.mark.parametrize("model_name", [*model_names])
def test_inference_behavior(model_name):
    specs = MODEL_SPECS[model_name]
    get_model = specs['factory-method']
    input_shape = specs['input-shape']

    model1 = get_model()
    model1.randomize_weights(seed=42)
    model1.eval()

    model2 = get_model()
    model2.randomize_weights(seed=42)
    model2.eval()

    torch.manual_seed(42)
    sample = torch.rand(1, *input_shape)
    
    with torch.no_grad():
        output1 = model1(sample)
        output2 = model2(sample)

        if model_name == 'retinanet':
            # [{'boxes': tensor([], size=(0, 4), grad_fn=<StackBackward0>), 'scores': tensor([], grad_fn=<IndexBackward0>), 'labels': tensor([], dtype=torch.int64)}]
            for item1, item2 in zip(output1, output2):
                for tensor1, tensor2 in zip(item1.values(), item2.values()):
                    assert torch.allclose(tensor1, tensor2)
        else:
            assert torch.allclose(output1, output2)
