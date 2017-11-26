#!/bin/bash

mkdir -p /BioDATA/fb/

cd /BioDATA/fb

curl "ftp://ftp.flybase.net/releases/FB2017_05/" | awk '$9~/_r/' > getfile.txt

for i in $(awk '{print $9;}' getfile.txt)
do
	species_name=$(echo ${i} | sed 's/_.*//')
	species_release=$(echo ${i} | sed 's/[^_]*_//')
	mkdir -p /BioDATA/fb/${i}
	pushd /BioDATA/fb/${i}
	curl -O "ftp://ftp.flybase.net/releases/FB2017_05/${i}/fasta/${species_name}-all-chromosome-${species_release}.fasta.gz"
	popd
done 
