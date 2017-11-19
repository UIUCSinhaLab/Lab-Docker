FROM genome_workspace

MAINTAINER Bryan Lunt <bjlunt2@illinois.edu>

ADD get_2bit_or_fa.bash /root/

#Copied from debian miniconda ftps://github.com/conda/conda-docker/blob/master/miniconda3/debian/Dockerfile
RUN apt-get update && apt-get install -y vim less && apt-get autoclean

RUN mkdir -p /BioDATA/fly/ && \
	(cd /BioDATA/fly && \
		( curl 'ftp://hgdownload.soe.ucsc.edu/goldenPath/' | awk '$9~/dro/; $9~/dm/; $9~/dp/;' > getList.txt ) && \
		for i in `awk '{print $9;}' getList.txt`; \
		do \
			#wget 'ftp://hgdownload.soe.ucsc.edu/goldenPath/'${i}'/bigZips/*.2bit' && \
			/root/get_2bit_or_fa.bash ${i} && \
			wget 'ftp://hgdownload.soe.ucsc.edu/goldenPath/'${i}'/liftOver/*.chain.gz' ; \
		done && \
	echo "DONE Downloading" )


ENV PATH /opt/ucsc/bin:$PATH
		
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm6/bigZips/dm6.2bit' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm6/liftOver/*' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm3/bigZips/dm3.2bit' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm3/liftOver/*' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm2/bigZips/dm2.2bit' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm2/liftOver/*' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm1/bigZips/dm1.2bit' && \
#		wget -q 'ftp://hgdownload.soe.ucsc.edu/goldenPath/dm1/liftOver/*' && \
