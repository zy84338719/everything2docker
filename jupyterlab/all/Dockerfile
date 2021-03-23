# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/all-spark-notebook

LABEL maintainer="张易 <zy84338719@hotmail.com>"

# Set when building on Travis so that certain long-running build steps can
# be skipped to shorten build time.
ARG TEST_ONLY_BUILD

USER root

# 添加内核
RUN conda install -c conda-forge ipywidgets beakerx
RUN chown -R jovyan /home/jovyan/.* 
RUN chgrp -R users /home/jovyan/.*
RUN apt-get update
RUN apt install -y snapcraft
RUN snap refresh
RUN snap install go --classic
RUN env GO111MODULE=on go get github.com/gopherdata/gophernotes
RUN mkdir -p /home/jovya/.local/share/jupyter/kernels/gophernotes
RUN cd /home/jovya/.local/share/jupyter/kernels/gophernotes && cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@v0.7.2/kernel/*  "." && chmod +w ./kernel.json && sed "s|gophernotes|$(go env GOPATH)/bin/gophernotes|" < kernel.json.in > kernel.json