#!/bin/bash

# set tells the program to stop if it runs into any issues, the flag descriptions are as follows:
# -e Exit immediately when a command fails.
# -u Treats unset/unbound variables as an error and exits immediately.
# -x Prints each command before executing it -- this is helpful for debugging.
# -o Sets the exit code (0 is successful) to the that of the rightmost command...continued on next line
# -o If the first command in a pipeline failed it will be carried through to the end of the pipeline and still exit instead of continuing through the script
set -euxo pipefail

export ROOT_SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_directories
export SIMPLE_DIR=${ROOT_SIMPLE_DIR}/simple_files
export COMBO_SIMPLE_DIR=${ROOT_SIMPLE_DIR}/combo_simple_files

mkdir -p ${ROOT_SIMPLE_DIR}
mkdir -p ${SIMPLE_DIR}
mkdir -p ${COMBO_SIMPLE_DIR}