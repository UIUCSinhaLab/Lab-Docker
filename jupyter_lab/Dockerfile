FROM bioconda3

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

USER root
WORKDIR /root
RUN conda install -y biopython jupyter jupyterlab scipy numpy sympy matplotlib pandas && conda clean -i -l -t -s -y

RUN conda install -y neon tensorflow theano keras pytorch

RUN apt-get update && apt-get install -y git \
	&& apt-get autoclean \
	&& rm -rf /var/lib/apt/lists/* /var/log/dpkg.log 
RUN git clone https://github.com/gotcha/ipdb.git

RUN useradd -m -s /bin/bash labuser

EXPOSE 8888

USER labuser
WORKDIR /home/labuser

VOLUME ["/mnt/shared"]

CMD ["jupyter", "lab","--ip","0.0.0.0", "--port", "8888"]
