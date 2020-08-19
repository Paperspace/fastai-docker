#!/bin/bash
source activate fastai
mkdir /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/
jupyter notebook --ip=0.0.0.0 --no-browser --allow-root
