FROM fastdotai/fastai@sha256:4524c0f2a769a6f446986e61cfbd0d8421f9f8cee28a7a943044ddc2ed7c64d5

# Ref the mild drama in
#   https://github.com/pallets/jinja/issues/1626
# and related threads
#   https://github.com/pallets/jinja/issues/1636
#   https://github.com/jupyter/nbconvert/pull/1737
#   https://github.com/jupyter/nbconvert/issues/1736
#   https://github.com/jupyter/nbconvert/issues/1605
#
# Jinja removed a previously-deprecated method that downstream
# package maintainers weren't paying attention to and it breaks
# Jupyter. Dust will settle in a couple days, but for now
# we need to pin to a still-supported Jinja2 version
RUN python3 -m pip install -I jinja2 >=3.1.1
RUN python3 -m pip install --upgrade nbdev nbconvert jupyter jupyterlab
RUN python3 -m pip install --upgrade fastai >=2.6.0
RUN python3 -m pip install --upgrade gradient
RUN python3 -m pip install --upgrade ipywidgets
RUN python3 -m pip install --upgrade transformers[torch]
RUN python3 -m pip install --upgrade fastbook
RUN apt-get -y update
RUN apt install vim joe emacs man -y
RUN echo 'if [ -f /storage/.bash.local ]; then\n ./storage/.bash.local \nfi' >> ~/.bashrc 

ENV USER fastai
WORKDIR /notebooks
RUN chmod -R a+w /notebooks
WORKDIR /notebooks

COPY config.ini /root/.fastai/config.ini
COPY run.sh /run.sh

CMD ["/run.sh"]
