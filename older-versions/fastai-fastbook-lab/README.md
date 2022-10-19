# Paperspace + Fast.ai Docker files

*Jupyterlab version*

## Overview

This is a docker build file designed to work with [Paperspace]. The latest pre-built runtimes are pushed here: https://hub.docker.com/r/paperspace/fastai/

This container is intended to be used with to be used with the latest (v4) fast.ai fastbook repo. You can find this repo here: https://github.com/fastai/fastbook and you can learn more about the Fast.ai book here: http://book.fast.ai/

course-v4 is no longer a repo -- please use the clean directory of the fastbook repository (fastbook/clean) for that content

## Requirements:

[Docker CE](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

[NVIDIA-docker](https://github.com/NVIDIA/nvidia-docker)

Nvidia Drivers


## Build

`sudo docker build -t paperspace/fastai .`

## Pre-built runtimes

You can also just run the following without having to build the entire container yourself. This will pull the container from Docker Hub.

`sudo docker run --gpus all -d -p 8888:8888 paperspace/fastai:2.0-CUDA9.2-fastbook-v0.0.8-lab /run.sh`
