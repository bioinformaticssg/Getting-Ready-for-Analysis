#!/bin/bash

# Exit this script on any error.
set -euxo pipefail

# This is the directory for our newly made simple files
SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_files

# Here we make our simple_files directory
mkdir -p ${SIMPLE_DIR}

# This generates files in the range of numbers provided -- here is 1 to 4
for NUMBER in `seq 1 4`; do
	for LETTER in A B; do
		echo ${NUMBER}_${LETTER} > ${SIMPLE_DIR}/simple_file_${NUMBER}_${LETTER}.txt
	done
done