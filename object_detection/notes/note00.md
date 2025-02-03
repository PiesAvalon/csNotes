# 序言 笔记
本系列笔记整理了b站视频中所介绍的内容，包含完整的目标检测模型训练流程。

视频链接：https://www.bilibili.com/video/BV1ZL4y1p7Cz

## 教程的定位
目标检测入门实践
- 了解目标检测基本模型
- 了解目标检测的经典网络模型
- 该如何应用到自己的项目中（制作自己的数据集）
- 训练模型的一些技巧方法
## 所需的基础
- python基础
- pytorch基础
- 目标检测、深度学习相关的基础知识（可选）

## 什么是目标检测
检测出**位置** + **类别**

**人脸检测**：以人脸为目标

**文字检测**：以文字为目标

主流目标检测都是以矩阵框的形式进行输出的。（考虑能否满足项目需求）

**语义分割**比**目标检测**能达到更高的精度。

## 目标检测的数据集
### VOC数据集
官网：http://host.robots.ox.ac.uk/pascal/VOC/

VOC 2007、VOC 2012...
![VOC](../images/VOCdataset.png)
#### 数据集的下载
VOC 2007：http://host.robots.ox.ac.uk/pascal/VOC/voc2007/VOCtrainval_06-Nov-2007.tar
VOC 2012：http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar
pytorch官网：https://pytorch.org/vision/stable/generated/torchvision.datasets。VOCDetection.html
#### 数据集介绍
画目标检测边框（bounding box）软件：https://www.gifgit.com/image/rectangle-tool

以VOC2007为例：
- /Annotations：`.xml`文件。为训练集图片的信息，及相关目标的位置
- /ImageSets/Main：不同类别在数据集每张图片中是否出现
- /JPEGimages：原图

### COCO数据集
官网：https://cocodataset.org/

下载链接：https://cocodataset.org/#download （其中train是训练集，val是验证集，数据集和数据集的标注是要分开下载的）

COCO是一个很大的数据集，是和图片相关模型最常用的数据集。最常用的是COCO2017。

关于coco数据集的标注（annotation）视频讲解：https://www.youtube.com/watch?v=h6s61a_pqfM

### 在线数据集标注
make sense标注工具官网：https://www.makesense.ai/

cvat适合大型项目：https://www.cvat.ai/

### 本地标注数据集（不推荐）
精灵标注助手：http://www.jinglingbiaozhu.com/

其他工具：

labelme

labelimg
