#!/bin/bash

# Exit this script on any error.
set -euxo pipefail

if [ $# -ne 3 ]; then
    echo "usage: `basename $0` variables_filename nstart_seq nend_seq"
    exit 1
fi

source ${0%/*}/$1

RUNLOG=${COMBO_SIMPLE_DIR}/simple_files_runlog.txt
echo "Run by `whoami` on `date`" > ${RUNLOG}

for ID in `seq $2 $3`; do
    echo "*** Combo ${ID} is up!"
    echo concatenate ${SIMPLE_DIR}/*${FILE_ID}* >> ${RUNLOG}
    cat ${SIMPLE_DIR}/*${FILE_ID}* > ${COMBO_SIMPLE_DIR}/combined_simple_file_${FILE_ID}.txt
done
