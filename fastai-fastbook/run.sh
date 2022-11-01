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

jupyter "$@"
