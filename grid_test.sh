#!/bin/sh

#echo "started at $(date)"
source ./init_fcc_stack.sh cvmfs

#echo "locating libXm.so"
#locate libXm.so
#echo "re-linking libXm.so.4.0.3 --> libXm.so"
#ln -s /usr/lib64/libXm.so.4.0.3 libXm.so

#echo "locating libexpat.so"
#locate libexpat.so
#ln -s /usr/lib64/libexpat.so.0 libexpat.so
#ln -s /usr/lib64/libexpat.so.0.5.0 libexpat.so

#make purge
#make clean
make -j 8
echo "started events at $(date)"
./run gaudirun.py geant_fullsim_ecal_SPG_batch.py
echo "ended events at $(date)"
#echo "ended at $(date)"
