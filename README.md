# AlignDETR
## Introduction
AlignDETR is a variant of DETR(DEtection with Transformer), with a simple IoU-Aware BCE loss and better performance! It aims to solve the issue of misalignment problem spotted in DETR's output.
For more details, please refer to our [paper on Arxiv](). 
<img src="assets/aligndetr.png" >

## Installation 
See [installation instructions](INSTALL.md) 
## Usage
Train Example
```bash
python tools/train_net.py --config-file  aligndetr/aligndetr_k=2_r50_4scale_12ep.py --num-gpus 8
```
Evaluation Example
```bash
python tools/train_net.py --config-file  aligndetr/aligndetr_k=2_r50_4scale_12ep.py --num-gpus 8 --eval train.init_checkpoint=/path/to/checkpoint
```
## Model Zoo
## License
This project is released under the [Apache 2.0 license](LICENSE).
