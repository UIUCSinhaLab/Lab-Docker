FROM miniconda3

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

#Copied from debian miniconda https://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile

RUN (conda config --add channels r) && \
conda config --add channels defaults && \
conda config --add channels conda-forge && \
conda config --add channels bioconda 

RUN conda install -y biopython
