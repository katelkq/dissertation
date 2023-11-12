import torch
from torchvision import transforms
from models.retinanet.retinanet import retinanet_from_backbone
from datasets.openimages import OpenImages
from datasets import dataset

model = retinanet_from_backbone(backbone='resnext50_32x4d',
                                num_classes=264,
                                image_size=[800, 800],
                                data_layout='channels_first',
                                trainable_backbone_layers=0)

dict = torch.load('models/retinanet/retinanet_model_10.pth', map_location='cpu')
another_dict = torch.load('models/retinanet/resnext50_32x4d_fpn.pth', map_location='cpu')
print(type(another_dict))

#
model.load_state_dict(dict['model'])
model.eval()

# dict_keys(['model', 'optimizer', 'epoch', 'args'])
print(dict['args'])

dataset = OpenImages(
    data_path='data/openimages/validation/data',
    image_list='data/openimages/annotations/openimages-mlperf.json',
    image_format='NCHW',
    name='openimages-800-retinanet',
    pre_process=dataset.pre_process_openimages_retinanet,
    count=20
)

image, target = dataset.get_item(0)

#pred = model(torch.from_numpy(image))
#print(pred)
print('---')
#print(target)

