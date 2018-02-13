#!/bin/bash

# Exit this script on any error.
set -euxo pipefail

# If the number of command line parameters given ($#) do not equal (-ne) 3, then the following message 
# will appear to provide the user information about the arguments that should be provided.
# For this example, use ./04_simple_directory_setup.sh for the directory_setup_path
if [ $# -ne 3 ]; then
    echo "usage: `basename $0` directory_setup_file nstart_seq nend_seq"
    exit 1
fi

# The file provided will set all variables and paths needed for this script.
source $1

# This generates files in the range of numbers provided on the command line ($2=nstart_seq, $3=nend_seq)
for NUMBER in `seq $2 $3`; do
	for LETTER in A B; do
		echo ${NUMBER}_${LETTER} > ${SIMPLE_DIR}/simple_file_${NUMBER}_${LETTER}.txt
	done
done