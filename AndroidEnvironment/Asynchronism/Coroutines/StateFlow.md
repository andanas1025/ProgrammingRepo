# StateFlow

StateFlow

In View Model

private val _uiState = MutableStateFlow(NAMEState())

internal val uiState: StateFlow<NAMEState> = _uiState

internal fun onCreate() {
	val answer = answerFromSingleSourceOfTruth()
	_uiState.value = NAMEState(answer)
}

data class NameState(
	...
)

In View(Activity or Fragment)

override fun onStart() {
	...
	initObservers()
	...
}

private fun initObservers() {
	lifecycleScope.launch {
		repeatOnLifecycle(Lifecycle.State.CREATED) {
			viewModel.uiState.collect() { info ->
				handleData(info)
			}
		}
	}
}
 
