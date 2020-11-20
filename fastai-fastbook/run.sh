#!/bin/bash
source activate fastai
export SHELL=/bin/bash
mkdir /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/
jupyter notebook --ip=0.0.0.0 --no-browser --allow-root --NotebookApp.trust_xheaders=True --NotebookApp.disable_check_xsrf=False --NotebookApp.allow_remote_access=True --NotebookApp.allow_origin='*'
