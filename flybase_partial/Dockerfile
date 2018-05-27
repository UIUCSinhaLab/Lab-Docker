FROM jpnb

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>


USER root
WORKDIR /root/
#Copied from debian miniconda ftps://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update && apt-get install -y curl wget git vim less rsync && apt-get autoclean

ENV FB_VERSION FB2017_05
ENV FB_BASEURL ftp://ftp.flybase.net/releases/${FB_VERSION}/

ADD get_flybase.bash .

RUN bash get_flybase.bash

WORKDIR /home/labuser/
USER labuser

VOLUME ["/mnt/shared"]

CMD ["jupyter", "notebook","--ip","0.0.0.0", "--port", "8888"]
