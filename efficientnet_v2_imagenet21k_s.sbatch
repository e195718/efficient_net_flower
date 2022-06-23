#!/bin/bash
#SBATCH --job-name keras-bert-normal
#SBATCH --output %x-%j.log
#SBATCH --error %x-%j.err
#SBATCH --nodes 1
#SBATCH --gpus tesla:1

date
singularity exec --nv ~/efficientnetv2/flowertensorflow_latest-gpu-py3.sif python efficient_net_flower.py
date
