#!/bin/bash

set -euxo pipefail

if [ $# -ne 3 ]; then
    echo "usage: `basename $0` variables_filename nstart_seq nend_seq"
    exit 1
fi

source ${0%/*}/$1

for NUMBER in `seq $2 $3`; do
	for LETTER in A B; do
		echo ${NUMBER}_${LETTER} > ${SIMPLE_DIR}/simple_file_${NUMBER}_${LETTER}.txt
	done
done