# Paperspace + Fast.ai Docker files


## Overview

This is a Dockerfile (a text file that allow you to build Docker images) designed to work with [Paperspace]. The latest Docker images (pre-built runtimes) are pushed here: https://hub.docker.com/r/paperspace/fastai/

This Dockerfile is intended to be used with the fast.ai fastbook repo at https://github.com/fastai/fastbook 
You can learn more about the fast.ai book here: http://book.fast.ai/

course-v4 is no longer a repo -- please use the clean directory of the fastbook repository (fastbook/clean) for that content

## Requirements:

[Docker CE](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

[NVIDIA-docker](https://github.com/NVIDIA/nvidia-docker)

Nvidia Drivers


## Build

`sudo docker build -t paperspace/fastai .`

## Docker images (pre-built runtimes)

You can also just run the following command without having to build the Docker image yourself. 
This will pull the Docker image from Docker Hub:

`sudo docker run --gpus all -d -p 8888:8888 paperspace/fastai:2.0-fastbook-2021-11-12 /run.sh`
