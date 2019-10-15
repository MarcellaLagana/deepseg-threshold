#!/bin/bash
# Environment variables for the spineGeneric study.

# Set every other path relative to this path for convenience
# Do not add "/" at the end. Path should be absolute (i.e. do not use "~")
export PATH_PARENT="/home/GRAMES.POLYMTL.CA/p101317/data_nvme_p101317/spineGeneric_20191015_deepseg_thr"

# Path to the folder site which contains all sites.
# Do not add "/" at the end. Path should be absolute (i.e. do not use "~")
export PATH_DATA="/home/GRAMES.POLYMTL.CA/p101317/duke/sct_testing/bids/spineGeneric_multiSubjects"

# If each subject folder starts with a prefix, indicate it here. Otherwise, set to ""
SUBJECT_PREFIX="sub-"

# Paths to where to save the new dataset.
# Do not add "/" at the end. Path should be absolute (i.e. do not use "~")
export PATH_RESULTS="${PATH_PARENT}/results"
export PATH_QC="${PATH_PARENT}/qc"
export PATH_LOG="${PATH_PARENT}/log"

# Location of manually-corrected segmentations
export PATH_SEGMANUAL="${PATH_PARENT}/seg_manual"

# If you only want to process specific subjects, uncomment and list them here:
# export ONLY_PROCESS_THESE_SUBJECTS=(
#   "sub-amu01"
#   "sub-amu02"
#   "sub-ucl01"
# )

# List of images to exclude
# export TO_EXCLUDE=(
#   "sub-amu01_acq-MTon_MTS"
#   "sub-amu03_acq-MToff_MTS"
#   "sub-brno02_T1w"
# )

# Number of jobs for parallel processing
# To know the number of available cores, run: getconf _NPROCESSORS_ONLN
# We recommend not using more than half the number of available cores.
export JOBS=20  # on joplin, no more than 20

# Number of jobs for ANTs routine. Set to 1 if ANTs functions crash when CPU saturates.
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1
