#!/bin/bash

export SHELL=/bin/bash

mkdir /notebooks/.gradient
echo "integrations:
  fastai:
    type: dataset
    ref: paperspace/dsr4qbcrcg662pf:latest" > /notebooks/.gradient/settings.yaml

if [ -f /storage/pre-run.sh ]; then
    . /storage/pre-run.sh
fi

jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True