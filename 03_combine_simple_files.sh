#!/bin/bash

# Exit this script on any error.
set -euxo pipefail

COMBO_SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/combo_simple_files

RUNLOG=${COMBO_SIMPLE_DIR}/simple_files_runlog.txt
echo "Run by `whoami` on `date`" > ${RUNLOG}

for ID in `seq 1 4`; do
    FILE_ID=`printf %0.1d $ID`
    echo "*** Combo $FILE_ID is up!"
    echo concatenate *${FILE_ID}* >> ${RUNLOG}
    cat ${SIMPLE_DIR}/*${FILE_ID}* > ${COMBO_SIMPLE_DIR}/combined_simple_file_${FILE_ID}.txt
done