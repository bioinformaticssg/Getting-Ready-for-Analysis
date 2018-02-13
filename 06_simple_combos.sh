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

# Another option: if the script you are running is in the same directory as the directory_setup_file you can use the command below
# source ${0%/*}/$1
# $0 is a special variable indicating the path to the current script
# ${0%/*} Removes everything after the last occurrence of /
# ${0%/*}/$1 Replaces the filename provided in the path. That being said, the directory_setup_file should only be the file name and not the full path.

# Here we set up a file to document the files that will are combined together.
RUNLOG=${COMBO_SIMPLE_DIR}/simple_files_runlog.txt
# This prints the user name and date to the "runlog" file
echo "Run by `whoami` on `date`" > ${RUNLOG}

# Here we combine the files that have the same number in the range given on the command line ($2=nstart_seq, $3=nend_seq)
for ID in `seq $2 $3`; do
	# This will print to your screen
    echo "*** Combo ${ID} is up!"
    # This will be printed in your "runlog" file
    echo concatenate ${SIMPLE_DIR}/*${ID}* >> ${RUNLOG}
    # This combines the files in the indicated directory that contain the same number in their file name
    cat ${SIMPLE_DIR}/*${ID}* > ${COMBO_SIMPLE_DIR}/combined_simple_file_${ID}.txt
done