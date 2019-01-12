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
RUN chown -R jovyan /home/jovyan/.* 
RUN chgrp -R users /home/jovyan/.*
