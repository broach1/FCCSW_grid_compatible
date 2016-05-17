FCCSW
=====

Version of FCCSW intended to submit jobs to Grid. 
Running this locally as well as submitting to Grid is not recommended - things may become linked to afs, which will cause Grid jobs to fail.
This software is based on Gaudi.


Installation
------------

All installation occurs on the Grid. The file
    grid_sub.sh
submits the job using prun and sets the outDS.

The file
    grid_test.sh
is what actually runs on Grid. The FCC stack is sourced, the code is compiled, and the particle gun is used to generate events from the script
   geant_fullsim_ecal_SPG_batch.py

However, if you wish to run many jobs, it is recommended you use
	 grid_sub_many.sh
to iterate over the jobs you wish to submit. Currently the script is designed to submit tests with different ratios of lead and LAr in the ECAL, but it can easily be modified.




Documentation
----

Please consult [FCCSW documentation](http://fccsw.web.cern.ch/fccsw/)
