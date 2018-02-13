#!/bin/bash

export ROOT_SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_directories
export SIMPLE_DIR=${ROOT_SIMPLE_DIR}/simple_files
export COMBO_SIMPLE_DIR=${ROOT_SIMPLE_DIR}/combo_simple_files


export RUNLOG=${SIMPLE_DIR}/runlog.txt

mkdir -p ${ROOT_SIMPLE_DIR}
mkdir -p ${SIMPLE_DIR}
mkdir -p ${COMBO_SIMPLE_DIR}