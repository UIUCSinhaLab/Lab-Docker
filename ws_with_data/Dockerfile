FROM genome_workspace

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

#Copied from debian miniconda https://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update && apt-get install -y vim less && apt-get autoclean

RUN mkdir -p /BioDATA/fly/ && \
	(cd /BioDATA/fly && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm6/bigZips/dm6.2bit' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm6/liftOver/*' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm3/bigZips/dm3.2bit' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm3/liftOver/*' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm2/bigZips/dm2.2bit' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm2/liftOver/*' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm1/bigZips/dm1.2bit' && \
		wget 'http://hgdownload.soe.ucsc.edu/goldenPath/dm1/liftOver/*' && \
	echo DONE )


ENV PATH /opt/ucsc/bin:$PATH
