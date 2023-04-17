from .align_dab_detr_r50_50ep import (
    train,
    dataloader,
    optimizer,
    lr_multiplier,
    model,
)
from .models.align_dab_detr_r50 import model
# modify training config
train.init_checkpoint = "/path/to/torchvision/R101.pth"
train.output_dir = "./output/align_dab_detr_r101_50ep"

# modify model config
model.backbone.stages.depth = 101
