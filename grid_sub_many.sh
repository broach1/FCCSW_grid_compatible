#!/bin/bash

#copy the correct file to the detector area to prepare for run
#also name the output dataset
SM=4
LAR=2.00
LEAD=2.00
NTOT=1000
E=500
#cp new_ecal/${SM}mm/out_LAR${LAR}_LEAD${LEAD}.xml DetectorDescription/Detectors/compact/FCChh_ECalDefinition.xml


i=1
TOT=11
while [ $i -lt 11 ]
do
#prun --exec ". ./grid_test.sh" --cmtConfig=x86_64-slc6-gcc49-opt --site=CERN-PROD --outDS user.broach_e${E}_LAR${LAR}_LEAD${LEAD}_NTOT${NTOT}_BFIELD0_PART${i}_OF_${TOT} --outputs output.root
echo $i
echo user.broach_e${E}_LAR${LAR}_LEAD${LEAD}_NTOT${NTOT}_BFIELD0_PART${i}_OF_${TOT}
i=$[$i+1]

done
