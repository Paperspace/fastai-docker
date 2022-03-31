#!/bin/bash
source activate fastai
export SHELL=/bin/bash
mkdir /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/

mkdir /notebooks/.gradient
echo "integrations:
  fastai:
    type: dataset
    ref: paperspace/dsr4qbcrcg662pf:latest" > /notebooks/.gradient/settings.yaml

jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True
