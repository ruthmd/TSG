#!/bin/bash

source .venv/bin/activate

python3 train_tsg.py --cfg ./tsg_configs/tsg-run.yml
