FROM bioconda3

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

#Copied from debian miniconda https://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update \
	&& apt-get upgrade -y openssl libssl-dev ssh \
	&& apt-get install -y curl wget \
	&& apt-get install -y emboss \
	&& apt-get autoclean \
	&& rm -rf /var/lib/apt/lists/* /var/log/dpkg.log 

RUN mkdir -p /opt/ucsc/bin && mkdir -p /opt/ucsc/src && (cd /opt/ucsc/bin && wget -q ftp://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/\* && wget -q ftp://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/\* )
 #(cd /opt/ucsc/ && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/FOOTER && sed -n '/^======== / { s/=* *\(\w*\).*/\1/; p; }' FOOTER > list) && (cd /opt/ucsc/bin && for i in $(cat list); do curl -O "http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/${i}" ; done )
#RUN (cd /opt/ucsb/src && curl -O http://hgdownload.soe.ucsc.edu/admin/exe/userApps.src.tgz && tar -zxvof userApps.src.tgz ) \

RUN (chmod -R 755 /opt/ucsc/bin/ )

ENV PATH /opt/ucsc/bin:$PATH
