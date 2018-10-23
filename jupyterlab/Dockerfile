# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/datascience-notebook

LABEL maintainer="张易 <zy84338719@hotmail.com>"

# Set when building on Travis so that certain long-running build steps can
# be skipped to shorten build time.
ARG TEST_ONLY_BUILD

USER root

# 添加内核
RUN conda install -c conda-forge ipywidgets beakerx
RUN wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh
RUN bash Anaconda-2.3.0-Linux-x86_64.sh
RUN conda update jupyter
RUN chown -R jovyan /home/jovyan/.* 
RUN chgrp -R users /home/jovyan/.*