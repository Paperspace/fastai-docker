FROM fastdotai/fastai@sha256:4524c0f2a769a6f446986e61cfbd0d8421f9f8cee28a7a943044ddc2ed7c64d5
ENV USER fastai
WORKDIR /notebooks
RUN chmod -R a+w /notebooks
WORKDIR /notebooks

COPY config.ini /root/.fastai/config.ini
COPY run.sh /run.sh

CMD ["/run.sh"]
