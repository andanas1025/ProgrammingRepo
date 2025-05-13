## Testing

Testing Project
ActionTypeViewModel
ActionPointViewModel


kluent, HAMCREST, Truth, mockK ... assertion test lib

* implementation—The dependency is available in all source sets, including the test source sets.
* testImplementation—The dependency is only available in the test source set.
* androidTestImplementation—The dependency is only available in the androidTest source set.

setImageWithCircleTransformation


Given, When, Then
One way to think about the structure of a test is to follow the Given, When, Then testing mnemonic. This divides your test into three parts:
* Given: Setup the objects and the state of the app that you need for your test. For this test, what is "given" is that you have a list of tasks where the task is active.
* When: Do the actual action on the object you're testing. For this test, it means calling getActiveAndCompletedStats.
* Then: This is where you actually check what happens when you do the action where you check if the test passed or failed. This is usually a number of assert function calls. For this test, it is the two asserts that check you have the correct active and completed percentages.

subjectUnderTest_actionOrInput_resultState
* Subject under test is the method or class that is being tested (getActiveAndCompletedStats).
* Next is the action or input (noCompleted).
* Finally you have the expected result (returnsHundredZero).

testsubjects = completable RX

Test Double
Simplified version of objects and procedures to facilitate complexitiy and time.

Types of test doubles
* Test stub (used for providing the tested code with "indirect input")
* Mock object (used for verifying "indirect output" of the tested code, by first defining the expectations before the tested code is executed)
* Test spy (used for verifying "indirect output" of the tested code, by asserting the expectations afterwards, without having defined the expectations before the tested code is executed. It helps in recording information about the indirect object created)
* Fake object (used as a simpler implementation, e.g. using an in-memory database in the tests instead of doing real database access)
* Dummy object (used when a parameter is needed for the tested method but without actually needing to use the parameter)

Black Box testing
Examine the functionality of an application without peering into its internal structure or working

Levels of software testing
Unit
	tested individual units of source code.
Integration
	Tested groups of funcionality to make user all is working as expected
System
	Applies to any large-scale integration testing, using any approach which observes how the various units interact.
Acceptance
	Test on real devices to ensure that App is working as expected.



FRS Functional Requirements specifications
SRS System Requirements Specifications


LoyaltyViewModelTest
SectionTipViewModelTest
NetverifyDocumentsViewModelTest


RxJavaPlugins.setIoSchedulerHandler { Schedulers.trampoline() }
RxJavaPlugins.setComputationSchedulerHandler { Schedulers.trampoline() }
RxJavaPlugins.setNewThreadSchedulerHandler { Schedulers.trampoline() }
RxAndroidPlugins.setInitMainThreadSchedulerHandler { Schedulers.trampoline() }

MockitoException

