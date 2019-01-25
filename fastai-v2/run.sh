#!/bin/bash

ln -s /data/ /notebooks/courses/dl1/
jupyter lab --ip=0.0.0.0 --no-browser --allow-root
