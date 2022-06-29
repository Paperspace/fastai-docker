#!/bin/bash
source activate fastai
export SHELL=/bin/bash
mkdir -p /storage/data
rm -rf /storage/lost+found
ln -s /datasets/fastai/* /storage/data/

rm -f /storage/data/aclImdb
rm -f /storage/data/adult_sample
rm -f /storage/data/camvid_tiny
rm -f /storage/data/dogscats
rm -f /storage/data/human_numbers
rm -f /storage/data/imagenet-sample-train
rm -f /storage/data/ml-100k
rm -f /storage/data/mnist_sample
rm -f /storage/data/movie_lens_sample
rm -f /storage/data/trn_resized_288.bc
rm -f /storage/data/trn_resized_72.bc
rm -f /storage/data/wt103_ids

rm -f /storage/data/imdb_tok

mkdir /notebooks/.gradient
echo "integrations:
  fastai:
    type: dataset
    ref: paperspace/dsr4qbcrcg662pf:latest" > /notebooks/.gradient/settings.yaml

if [ -f /storage/pre-run.sh ]; then
. /storage/pre-run.sh
fi

/root/mambaforge/bin/jupyter lab --allow-root --ip=0.0.0.0 --no-browser --ServerApp.trust_xheaders=True --ServerApp.disable_check_xsrf=False --ServerApp.allow_remote_access=True --ServerApp.allow_origin='*' --ServerApp.allow_credentials=True
