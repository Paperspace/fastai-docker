#!/bin/bash
source activate fastai
export SHELL=/bin/bash
mkdir -p /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/
jupyter lab --ip=0.0.0.0 --no-browser --allow-root
