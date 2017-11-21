FROM ws_with_data

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

RUN conda install -y biopython jupyter scipy sympy matplotlib && conda clean -all -y

RUN useradd -m -s /bin/bash labuser

EXPOSE 8888

USER labuser
WORKDIR /home/labuser

CMD ["jupyter", "notebook","--ip","0.0.0.0", "--port", "8888"]
