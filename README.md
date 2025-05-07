# patrol_bug_2621

Example project to demonstrate how interrupting Patrol tests when using flavors, does not stop the execution of the tests on the Android device.


This leads to the AndroidX Orchestrator apps required by Patrol to remain on the device preventing re-running the tests after interruption without manual cleanup.


Relevant error:

```
        : > Task :app:connectedDevDebugAndroidTest FAILED
        Test run failed to complete. Unable to find instrumentation info for: ComponentInfo{androidx.test.orchestrator/androidx.test.orchestrator.AndroidTestOrchestrator}. onError: commandError=true message=INSTRUMENTATION_FAILED: androidx.test.orchestrator/androidx.test.orchestrator.AndroidTestOrchestrator

        FAILURE: Build failed with an exception.

```