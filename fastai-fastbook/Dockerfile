# Paperspace image is located in Dockerhub registry: paperspace/gradient_base
# Ubuntu 20.04, CUDA Toolkit 11.2, CUDNN 8
FROM paperspace/gradient-base:pt112-tf29-jax0314-py39
ENV LANG C.UTF-8

# Setting shell to bash
ENV SHELL=/bin/bash
SHELL ["/bin/bash", "-c"]

# ==================================================================
# Directories & Tools
# ------------------------------------------------------------------

RUN mkdir /content
RUN apt-get update -y
RUN apt-get install -y graphviz

RUN echo -e 'if [ -f /storage/.bash.local ]; then\n . /storage/.bash.local \nfi' >> ~/.bashrc


# ==================================================================
# Config & Cleanup
# ------------------------------------------------------------------

RUN ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/*


EXPOSE 8888 6006

