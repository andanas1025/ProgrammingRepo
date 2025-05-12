## Mockito

orderResponse =
    GsonMappersUtils.mapJsonToModel("order_response.json", JsonObject::class.java).run {
        OrderResponse.fromJsonObject(this)
    }

Mocks.getRealTimeInterface
OneClickToCallViewModelTest

https://github.com/mockito/mockito/wiki/What%27s-new-in-Mockito-2
https://github.com/mockito/mockito/issues/1614

Clase de Remote config test
SectionSplitFareViewModelTest

@After
fun clearMocks() {
    Mockito.framework().clearInlineMocks()
}


* @BeforeClass: Esto indica que debe ser ejecutado el método estático esta anotación se aplica a una vez y antes de todas las pruebas en la clase. Esto se podría utilizar, por ejemplo, para configurar una conexión a una base de datos.
* @Before: indica que el método esta anotación se une a debe ser ejecutado antes de cada método de prueba en la clase.
* @Test: indica que el método esta anotación se une a debe funcionar como un caso de prueba.
* @After: indica que debe ejecutar el método de esta anotación se une a después de cada método de prueba.
* @AfterClass: indica que el método esta anotación se une a debe ejecutar después de que se han ejecutado todos los métodos de prueba en la clase. Aquí, típicamente cerca recursos que fueron abiertos en @BeforeClass.


Mockito Verify Argument Matchers
Mockito argument matchers can be used only with when() and verify() methods. Let’s look at a few examples of using argument matchers in Mockito verify method.


file:///Users/andresrubianodelchiaro/Documents/repo/rappi/favor/build/reports/tests/testDebugUnitTest/index.html

testOptions { unitTests.returnDefaultValues = true }
allow mockito default values

@RunWith(MockitoJUnitRunner::class)

@get:Rule
val taskExecutorRule = InstantTaskExecutorRule()

@Rule
@JvmField 
val mockitoRule: MockitoRule = MockitoJUnit.rule().strictness(Strictness.STRICT_STUBS)
Ensures clean tests, reduces test code duplication, improves debuggability.
* Offers best combination of flexibility and productivity.
* Highly recommended.
* Planned as default for Mockito v3.

@Mock
private lateinit var mockObserverAction: Observer<FavorWhimActions>

.apply {
	_actionTypesList.observeForever(mockObserverList)
	actionTypes.observeForever(mockObserverAction)
}

whenever(addressController.currentAddress()).thenReturn(Observable.just(address))

@After
fun cleanResources() {
	viewModel._actionTypesList.removeObserver(mockObserverList)
	viewModel.actionTypes.removeObserver(mockObserverAction)
}

mock-maker-inline
mockito-extensions
org.mockito.plugins.MockMaker
￼

RxJavaPlugins.setIoSchedulerHandler { Schedulers.trampoline() }
RxJavaPlugins.setComputationSchedulerHandler { Schedulers.trampoline() }
RxJavaPlugins.setNewThreadSchedulerHandler { Schedulers.trampoline() }
RxAndroidPlugins.setInitMainThreadSchedulerHandler { Schedulers.trampoline() }

:app:testDebugUnitTest and :app:testReleaseUnitTest
./gradlew :orders:testDebugUnitTest
f
- mockito-inline dependency let us to mock final class
https://antonioleiva.com/mockito-2-kotlin/


Open classes
Set all classes as open for testing without add open using: (allOpen plugin) 
plugins {
	id "org.jetbrains.kotlin.plugin.allopen" version "1.3.31" }

Once you've downloaded dependency, we must add an annotation to say that our package will be open for testing
allOpen {
	annotation("com.yourpackagename.OpenForTesting") }

Then, create next annotation: annotation class OpenForTesting

Finally, mark  the class with the annotation

org.mockito.plugins.MockMaker


Top Leve functions (must be test)
low level function (must be called automatically)


@Test
fun loadTeamsShouldShowAndHideLoading() = runBlocking {
    var isLoading = isLoadingLiveData.value
    assertNotNull(isLoading)
    isLoading?.let { assertTrue(it) }
    viewModel.loadTeams()
    verify(repo).refreshTeams()
    isLoading = isLoadingLiveData.value
    assertNotNull(isLoading)
    isLoading?.let { assertFalse(it) }
    return@runBlocking
}

the reason is when Mockito mocks an object normally it extends the requested class to create an instance, but all Kotlin classes are defined final in default, so the library can’t extend them. You can fix it with the “open” modifier but it’s a workaround (and could be incompatible with your designed architecture), to solve these problem there is a specific dependency that allow mocking on Kotlin classes:
testImplementation 'org.mockito:mockito-inline:2.8.47'

testOptions {
    unitTests.returnDefaultValues = true
}


verifyNoMoreInteractions(mockObserver);
verify(mockObserver, times(1)).onChanged(isA(State.Failure.class));

Verify With Mockito
A great thing about mocking is that we can verify that certain methods have been called on those mock objects during test execution — in addition to or in place of assertions — when the method under test is void.
* There are two overloaded verify methods.
    * One that accepts only the mock object — we can use this if the method is supposed to be invoked only once.
    * The other accepts the mock and a VerificationMode — there are quite a few methods in the Mockito class that provide some useful verificationModes:
        * times(int wantedNumberOfInvocations)
        * atLeast( int wantedNumberOfInvocations )
        * atMost( int wantedNumberOfInvocations )
        * calls( int wantedNumberOfInvocations )
        * only( int wantedNumberOfInvocations )
        * atLeastOnce()
        * never()


@InjectMocks will inject the mocks marked with @Mock to this instance when it is created.


=============================================================================

@Test
+    fun `when send survey question then response value `() {
+        initializeUserHomeViewModel()
+        val surveyPostQuestionModel =
+            SurveyPostQuestionModel(surveyId = 1, questionId = 1, answersId = arrayListOf(1, 2))
+        val result = userHomeViewModel.saveSurveyQuestion(surveyPostQuestionModel)
+        val testObserver = TestObserver<JsonObject>()
+        result.subscribe(testObserver)
+        testObserver.assertComplete()
+        testObserver.assertNoErrors()
+        testObserver.assertValueCount(1)
+        val listResult = testObserver.values()[0]
+        verify(homeController, atLeastOnce()).saveSurveyQuestion(surveyPostQuestionModel)
+        assertThat(listResult.size(), `is`(2))
+        testObserver.dispose()




//
OrderSummaryViewModelTest
testBindStore


OrderTrackingDelayedOrderViewModel
Clase de error de los live  data
