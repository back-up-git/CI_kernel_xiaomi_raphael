#!/bin/bash

# Source Vars
source vars.sh

# Make the Directory if it doesn't exist
mkdir -p $CIRRUS_WORKING_DIR

# Change to the Source Directory
cd $CIRRUS_WORKING_DIR

# Syncing source files
git clone $KT_LINK $KERNEL_ROOTDIR || { echo "ERROR: Failed to Clone the Kernel Tree!" && exit 1; }
cd $KERNEL_ROOTDIR

# Exit
exit 0