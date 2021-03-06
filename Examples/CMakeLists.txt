################################################################################
# Package: Examples
################################################################################
gaudi_subdir(Examples v1r0)

# this declaration will not be needed in the future
gaudi_depends_on_subdirs(GaudiAlg FWCore)

gaudi_add_module(Examples
                 src/*.cpp
                 LINK_LIBRARIES GaudiAlgLib FWCore)


include(CTest)

# These are the simple examples defined for doc/AddingTestsToFCCSW.md
gaudi_add_test(DummyGen
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/Examples/tests
               FRAMEWORK tests/options/examplejob.py)
gaudi_add_test(DummyGenCheck
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/Examples/tests
			         COMMAND python ./scripts/dummy_gen_test.py
			         DEPENDS DummyGen)
gaudi_add_test(DummyCheck
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/Examples/tests
			         COMMAND python ./scripts/test.py
			         FAILS)
# End of simple examples

# Tests of example configs
gaudi_add_test(GeantFullSimTrackerHits
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/geant_fullsim.py)
gaudi_add_test(GeantFullSimTrackerHitsWithField
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/geant_fullsim_field.py)
gaudi_add_test(GeantFullSimWithGeantino
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/geant_fullsim_SPG.py)
gaudi_add_test(GeantFullSimParticleGun
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/geant_pgun_fullsim.py)
gaudi_add_test(GeantFastSimTracker
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/geant_fastsim.py)
gaudi_add_test(SimplePythia
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/simple_pythia.py)
gaudi_add_test(SimpleWorkflow
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/simple_workflow.py)
gaudi_add_test(ExampleOptions
               WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
               FRAMEWORK options/example_options.py)
