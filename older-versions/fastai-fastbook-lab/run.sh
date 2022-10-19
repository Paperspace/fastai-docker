#!/bin/bash
source activate fastai
export SHELL=/bin/bash
mkdir -p /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/
jupyter lab --ip=0.0.0.0 --no-browser --allow-root --LabApp.trust_xheaders=True --LabApp.disable_check_xsrf=False --LabApp.allow_remote_access=True --LabApp.allow_origin='*'
