#!/bin/bash

set -euxo pipefail

SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_files

mkdir -p ${SIMPLE_DIR}

RUNLOG=${SIMPLE_DIR}/make_simple_files_runlog.txt
echo "Run by `whoami` on `date`" > ${RUNLOG}

for NUMBER in `seq 1 4`; do
	for LETTER in A B; do
		echo ${NUMBER}_${LETTER} > ${SIMPLE_DIR}/simple_file_${NUMBER}_${LETTER}.txt 2>> ${RUNLOG}
	done
done

