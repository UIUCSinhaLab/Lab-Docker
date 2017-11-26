FROM ws_with_data

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

USER root
WORKDIR /root
RUN conda install -y biopython jupyter scipy sympy matplotlib && conda clean -all -y

RUN apt-get install -y git
RUN git clone https://github.com/gotcha/ipdb.git

RUN useradd -m -s /bin/bash labuser

EXPOSE 8888

USER labuser
WORKDIR /home/labuser

VOLUME ["/mnt/shared"]

CMD ["jupyter", "notebook","--ip","0.0.0.0", "--port", "8888"]
