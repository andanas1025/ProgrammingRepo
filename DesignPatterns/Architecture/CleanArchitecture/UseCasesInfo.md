## Use Case

- Also called Interactors
- Contain info that many view models is calling methods here
- Business logic layer
- This could contain the logic to call many repositories. Nevertheless, we could set this info in another class in data layer; Google call it "NAMEManager".

interface NAMEUseCase {
	suspend fun nameMethod(): List<Data>
}

@Singleton  //Only one instance injected by hilt
class NAMEUseCaseImpl(
	private val repository: NAMERepository
) : NAMEUseCase {

	override suspend fun nameMethods(): List<Data> {
		return repositoty.NAMEMethod()
	}
}

Hilt

@Module
@InstallIn(ViewModelComponent::class)
abstract class UseCaseModule {
	
	@Binds
	abstract fun bindNAMEUseCase(
		name: NAMEUseCaseImpl
	) : NAMEUseCase
}

Test

class NAMEUseCaseTest {

	private lateinit var NAMEUseCase: NAMEUseCaseImpl

	@RelaxedMockK //injected any other dependency needed in that class
	private lateinit var NAMERepository: NAMERepository

	@Before
	fun onBefore() {
		MockKAnnotations.init(this)
		NAMEUseCase = NAMEUseCase(NAMERepository)
	}

	@Test
	fun ` given when then`() = runBlocking {
		val data = getData...
		coEvery { NAMERepository.NAMEMethods() } returns data //coevery is the same every but using coroutines and the words is 'returns'
		
		NAMEUseCase.NAMEmehod(...)
		coVerify(exactly = 1) { NAMERepository.NAMEmethod(any()) }
	}
}
