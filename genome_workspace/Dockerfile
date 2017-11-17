FROM miniconda3

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

#Copied from debian miniconda https://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update && apt-get install -y rsync curl wget && apt-get autoclean

RUN mkdir -p /opt/ucsc/bin && mkdir -p /opt/ucsc/src && (cd /opt/ucsc/ && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/FOOTER && sed -n '/^======== / { s/=* *\(\w*\).*/\1/; p; }' FOOTER > list) && (cd /opt/ucsc/bin && for i in $(cat list); do curl -O "http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/${i}" ; done )
#RUN (cd /opt/ucsb/src && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/userApps.src.tgz && tar -zxvof userApps.src.tgz ) \

RUN (cd /opt/ucsc/bin && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/blat && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/gfClient )

RUN (chmod -R 755 /opt/ucsc/bin/ )

ENV PATH /opt/ucsc/bin:$PATH
