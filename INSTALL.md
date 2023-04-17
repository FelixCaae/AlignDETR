### Requirements
- Linux with Python>=3.7
- PyTorch >= 1.10 and torchvision that matches the PyTorch installation. Follow official guides in [pytorch.org](https://pytorch.org/) to install them correctly.

### Install detectron2 and detrex.

Please refer the [installation guide of detrex](https://detrex.readthedocs.io/en/latest/tutorials/Installation.html) to install detectron2 and detrex first.

### Install this repository
```
git clone https://github.com/FelixCaae/AlignDETR
cd AlignDETR
pip install -e .
```

## Prepare Datasets
Please place COCO dataset in the datasets directory. It should look like
```
datasets/
    coco/
        annotations/
        train2017/
        val2017/
```
