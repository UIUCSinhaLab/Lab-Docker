FROM ubuntu:latest

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

#Copied from debian miniconda https://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get -qq update && apt-get -qq -y install curl bzip2 \
    && apt-get -qq -y autoremove \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log 

RUN curl -sSL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bf -p /opt/conda \
    && rm -rf /tmp/miniconda.sh \
    && . /opt/conda/etc/profile.d/conda.sh \
    && conda activate base \
    && conda update conda \
    && conda install -y python=3.6 \
    && ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh \
    && echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc \
    && echo "conda activate base" >> ~/.bashrc


ENV PATH /opt/conda/bin:$PATH

