#!/usr/bin/env bash
python test.py --dataroot ./datasets/half/30001 --name 30001_half_style --model test --which_epoch latest --which_model_netG resnet_2x_6blocks --which_direction AtoB --dataset_mode single --norm batch --resize_or_crop none --fineSize 256 --gpu_ids 0
