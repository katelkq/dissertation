# make directories
mkdir data
mkdir weights

# download imagenet dataset
wget -P ./data/imagenet https://image-net.org/data/ILSVRC/2012/ILSVRC2012_img_val.tar --no-check-certificate
wget -P ./data/imagenet https://image-net.org/data/ILSVRC/2012/ILSVRC2012_devkit_t12.tar.gz --no-check-certificate

# download COCO dataset
# https://cocodataset.org/#download
wget -P ./data/coco http://images.cocodataset.org/zips/val2017.zip
wget -P ./data/coco http://images.cocodataset.org/annotations/annotations_trainval2017.zip

unzip ./data/coco/val2017.zip -d ./data/coco
unzip ./data/coco/annotations_trainval2017.zip -d ./data/coco

rm ./data/coco/val2017.zip
rm ./data/coco/annotations_trainval2017.zip
