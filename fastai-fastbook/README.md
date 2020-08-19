# Paperspace + Fast.ai Docker files


## Overview

This is a docker build file designed to work with [Paperspace]. The latest pre-built runtimes are pushed here: https://hub.docker.com/r/paperspace/fastai/

This container pulls the latest fast.ai fastbook repo. You can find this repo here: https://github.com/fastai/fastbook and you can learn more about the Fast.ai book here: http://book.fast.ai/

This dockerfile pins the fastai "fastbook" repository to the commit hash: 5cf040c55c7da95167595ffa815499d37eb266f2 representing the master branch as of August 18th 2020.

Additionally, for posterity the spring fast.ai course v4 (on which the book is based) is also included inside course-v4 folder.

## Requirements:

[Docker CE](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

[NVIDIA-docker](https://github.com/NVIDIA/nvidia-docker)

Nvidia Drivers


## Build

`sudo docker build -t paperspace/fastai .`

## Pre-built runtimes

You can also just run the following without having to build the entire container yourself. This will pull the container from Docker Hub.

`sudo docker run --gpus all -d -p 8888:8888 paperspace/fastai:2.0-CUDA9.2-fastbook-v0.0.30`
