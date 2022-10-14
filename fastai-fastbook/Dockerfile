# Paperspace image is located in Dockerhub registry: paperspace/gradient_base
# Ubuntu 20.04, CUDA Toolkit 11.2, CUDNN 8

# ==================================================================
# Initial Setup
# ------------------------------------------------------------------
    
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


# ==================================================================
# Mambaforge
# ------------------------------------------------------------------

    RUN wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
    RUN bash Mambaforge-$(uname)-$(uname -m).sh -b 
    RUN ~/mambaforge/condabin/conda init
    RUN /root/mambaforge/bin/mamba install jupyter jupyterlab ipython -c conda-forge -y
    ENV PATH=$PATH:/root/mambaforge/bin
    RUN rm Mambaforge-$(uname)-$(uname -m).sh
    RUN ls /root


# ==================================================================
# Fast.ai
# ------------------------------------------------------------------

    RUN python3 -m pip install --upgrade pip
    RUN python3 -m pip install --upgrade fastai >=2.6.0
    RUN python3 -m pip install --upgrade fastbook
    RUN python3 -m pip install --upgrade jupyterlab-git


# ==================================================================
# Config & Cleanup
# ------------------------------------------------------------------

    RUN echo "export PATH=${PATH}" >> ~/.bashrc
    RUN echo $'if [ -f /storage/.bash.local ]; then\n    . /storage/.bash.local\nfi\n' >> ~/.bashrc 

    RUN echo "export PATH=${PATH}" >> ~/.profile
    RUN echo $'if [ -f /storage/.bash.local ]; then\n    . /storage/.bash.local\nfi\n' >> ~/.profile 

    RUN echo "export PATH=${PATH}" >> ~/.bash_profile
    RUN echo $'if [ -f /storage/.bash.local ]; then\n    . /storage/.bash.local\nfi\n' >> ~/.bash_profile 

    ENV USER fastai
    WORKDIR /notebooks
    RUN chmod -R a+w /notebooks
    WORKDIR /notebooks

    COPY run.sh /run.sh
    RUN chmod +x /run.sh

    CMD ["/run.sh"]

