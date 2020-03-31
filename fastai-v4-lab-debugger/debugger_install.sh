#!/bin/bash

source activate fastai
jupyter labextension install @jupyterlab/debugger @jupyter-widgets/jupyterlab-manager
jupyter nbextension enable --py widgetsnbextension

rm -f /debugger_install.sh
