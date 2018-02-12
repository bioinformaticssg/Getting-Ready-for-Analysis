#!/bin/bash

SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_dir

mkdir -p ${SIMPLE_DIR}

for NUMBER in `seq 1 4`; do
echo ${NUMBER} > ${SIMPLE_DIR}/simple_file_${NUMBER}.txt
done

