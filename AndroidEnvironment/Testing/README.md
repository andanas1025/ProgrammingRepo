## Unit Test
JUnit, TDD, assert Equals

## Integration Test
Test how multiple components works together. i.e. how ViewModel interact with Repository

ViewModelScope uses Dispatchers.Main by default and it's necessary to be replaced. 

runTest -> Suspending functions
<br>runBlockingTest -> older code

## UI Test
interact with UI elements - Espresso

Compose
@get:Rule
val composeTestRule = createComposeRule()

## Other
<br>Mock	Fake object → verify interactions
<br>Stub	Fake → returns predefined values
<br>Fake	Simpler implementation (in-memory DB)

Always isolate the unit of work

Use fake implementations instead of real services/db

Control dispatchers and time in coroutines

Keep tests fast, reliable, and independent

Don’t overtest → integration tests cover interaction

