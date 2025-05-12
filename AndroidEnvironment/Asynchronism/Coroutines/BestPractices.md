## Coroutines best practices
- Fetching Data Sequentially instead of Asynchronously
<br>We must run the calls in parallel. If don't this can lead to significantly longer executions times, causing unnecessary delays and affecting the user experience. 

<b>Don't</b><br>
```
suspend fun mistakeGetCarNames(ids: List<Int>): List<String> {	
	val names = mutableListOf<String>()
	for (id in ids) {
		names.add(getNameById(Id))//Wrong! calls run one after another
	}
}
```
<b>Do</b>
```
suspend fun getCarNames(ids: List<Int>): List<String> {
	return coroutineScopes {
		ids.map { id ->
			ids.map {
				async { getCarnameById(id) } // Run All request in parallel
			}.awaitAll() //Waits for all coroutines to complete and return results
  }
}
```

- Catching CancellationException in suspend Functions without properly rethrowing it back to the parent. potentially causing memory leaks and wasted resources

  <br><b>Don't</b><br>
```
suspend fun mistakeRiskyTask() {
	try {
        delay(3_000L) // Simulating long running operations
		val error = 10 //This will throw AritmeticException
	} catch(e: Exception) {
		println("code failed") // catching all exceptions</code>
```
<b>Do</b>
```
  suspend fun riskyTask() {
	try {
		delay(3_000L)
		val error  = 10/0 
	} catch (e: Exception) {
		if (e is CancellationException) throw e
		println ("Code not working")
	}
}
```
- Checking for coroutine cancellation

  <b>Don't</b>

```
suspend fun mistakeDoSomething() {
	val job = CoroutineScope(Dispatchers.Default).launch {
		var random  = Random.nextInt(100_000)
		while (random != 50_000) {
			println("RAndom $random")
			random = Random.nextInt(100_000)
		}
	}
	println("Random: Our job is cancelled")
	delay(500L)
	job.cancel
}
```

<b>Do</b>

```
  suspend fun mistakeDoSomething() {
	val job = CoroutineScope(Dispatchers.Default).launch {
		var random = Random.nextInt(100_000)
		while (random != 50_000) {
			println ("Random: $random")
			random = Random.nextInt(100_000)
		}
	}
	println("Random: our job canceled")
	delay(500L)
	job.cancel() 
}
```
## Don't do
- Don't use GlobalScope. Use viewModelScope instead

## General
- Coroutines must run inside a suspend function
- https://kt.academy/article/cc-sharedflow-stateflow
- https://developer.android.com/kotlin/coroutines/coroutines-best-practices
- 
  
