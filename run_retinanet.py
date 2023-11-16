import argparse
import torch
from torchvision import transforms

from models.retinanet import retinanet
from datasets.coco import CocoDataset, Resizer, Normalizer
from models.retinanet import coco_eval

# assert torch.__version__.split('.')[0] == '1'

print('CUDA available: {}'.format(torch.cuda.is_available()))
print('MPS available: {}'.format(torch.backends.mps.is_available()))

if torch.cuda.is_available():
	device = torch.device('cuda')
elif torch.backends.mps.is_available():
	device = torch.device('mps')
else:
	device = torch.device('cpu')

def main(args=None):
    parser = argparse.ArgumentParser(description='Simple training script for training a RetinaNet network.')

    parser.add_argument('--coco_path', help='Path to COCO directory')
    parser.add_argument('--model_path', help='Path to model', type=str)

    parser = parser.parse_args(args)

    dataset = CocoDataset(parser.coco_path, set_name='val2017',
                              transform=transforms.Compose([Normalizer(), Resizer()]))

    # Create the model
    model = retinanet.resnet50(num_classes=dataset.num_classes(), pretrained=True)

    model.load_state_dict(torch.load(parser.model_path, map_location=device))
    model = torch.nn.DataParallel(model).to(device)

    model.training = False
    model.eval()
    model.module.freeze_bn()

    coco_eval.evaluate_coco(dataset, model)


if __name__ == '__main__':
    main()
