#加载数据集 以VOC2007为例
import torchvision

coco_dataset = torchvision.datasets.VOCDetection(root=r'object_detection\datasets\VOC2007',year='2007',image_set='train', download=False)

img, label = coco_dataset[0]
img.show()
print(label)