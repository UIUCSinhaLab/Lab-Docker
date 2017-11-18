#!/bin/bash

NAME=$1

BASE_DIR="ftp://hgdownload.soe.ucsc.edu/goldenPath/"

TARGET_DIR="${BASE_DIR}/${NAME}/bigZips/"

tmp_filename=$(mktemp)

curl ${TARGET_DIR} | awk '$9~/.2bit/' > ${tmp_filename}

if [[ -s ${tmp_filename} ]]
then
	#get the .2bit file
	echo "GETTING 2bit"

	wget "${TARGET_DIR}"'/*.2bit'

else
	echo "GETTING fasta and _creating_ 2bit"

	wget "${TARGET_DIR}/${NAME}.fa.gz"
	gunzip "${NAME}.fa.gz"
	faToTwoBit "${NAME}.fa" ${NAME}.2bit
	rm "${NAME}.fa"
fi
