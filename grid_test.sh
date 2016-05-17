#!/bin/sh

#echo "started at $(date)"
source ./init_fcc_stack.sh cvmfs

#make purge
#make clean
make -j 8
echo "started events at $(date)"
./run gaudirun.py geant_fullsim_ecal_SPG_batch.py
echo "ended events at $(date)"
#echo "ended at $(date)"