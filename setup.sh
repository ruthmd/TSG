#!/bin/bash

git clone --recurse-submodules -j8 git@github.com:Delphboy/TSG.git

cd TSG

echo "Setting up python environment"
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
python3 -m pip install tqdm gensim matplotlib yacs lmdbdict scikit-image h5py tensorboardX nltk


cd coco-caption
bash get_stanford_models.sh

echo "All setup"
