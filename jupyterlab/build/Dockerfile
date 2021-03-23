FROM debian:buster-slim

LABEL maintainer="murphyyi"

RUN apt update \
    && apt install -y curl \
    && curl -L -s https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh >miniconda.sh \
    && sh miniconda.sh -b -f -p /usr/local/ \
    && pip install --no-cache-dir jupyter jupyterlab
    # && conda clean -y -a  \
    # && rm miniconda.sh \
    # && rm -r /var/lib/apt/lists/*

VOLUME /home/
WORKDIR /home/
USER root

EXPOSE 80

CMD [ "jupyter", "lab" ]

COPY etc/ /root/