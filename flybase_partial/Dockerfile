FROM ubuntu:latest

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>


#Copied from debian miniconda ftps://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update && apt-get install -y curl wget git vim less rsync && apt-get autoclean

ENV FB_VERSION FB2017_05
ENV FB_BASEURL ftp://ftp.flybase.net/releases/${FB_VERSION}/

WORKDIR /root/
ADD get_flybase.bash .

RUN bash get_flybase.bash
