#!/bin/bash

# Exit this script on any error.
set -euxo pipefail

# This is the directory containing our simple files
SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/simple_files
# This is the direcotry that will contain our newly concatenated files
COMBO_SIMPLE_DIR=/data/users/$USER/BioinformaticsSG/Getting-Ready-for-Analysis/combo_simple_files

# Here we make our combo_simple_files directory
mkdir -p ${COMBO_SIMPLE_DIR}

# Here we set up a file to document the files that are combined together.
RUNLOG=${COMBO_SIMPLE_DIR}/simple_files_runlog.txt
# This prints the user name and date to the "runlog" file
echo "Run by `whoami` on `date`" > ${RUNLOG}

# Here we combine the files that have the same number in the range indicated -- here it is 1 to 4
for ID in `seq 1 4`; do
	# I have included this line because it can be helpful to dicate how many digits the numbers are.
	# If you wanted to use two digit numbers like 01 to 04, change the command below to FILE_ID=`printf %0.2d $ID`
    FILE_ID=`printf %0.1d $ID`
    # This will be printed to your screen
    echo "*** Combo $FILE_ID is up!"
    # This will be printed in your "runlog" file
    echo concatenate ${SIMPLE_DIR}/*${FILE_ID}* >> ${RUNLOG}
    # This combines the files in the indicated directory that contain the same number in their file name
    cat ${SIMPLE_DIR}/*${FILE_ID}* > ${COMBO_SIMPLE_DIR}/combined_simple_file_${FILE_ID}.txt
done