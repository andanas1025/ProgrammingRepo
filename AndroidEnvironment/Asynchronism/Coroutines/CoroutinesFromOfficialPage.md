Coroutines (Doc android official)
https://kotlinlang.org/docs/coroutines-basics.html#structured-concurrency
https://developer.android.com/kotlin/coroutines

- It is a concurrency Design Pattern and simplify code that execute asynchronously.
- (Which design patterns are using in observables?) Iterable, 
- Since Kotlin 1.3
- We should use alternate threads to avoid to block the Main Thread. Beside the Main Thread, we can use the IO, Default and XXX in Coroutines. From Android, we have AsyncTask (deprecated), Handlers, Callback (Callback hells), Threads, Executors.
- Lightweight: We can run many coroutine on a single thread due to support for suspension keyword which doesn’t block the thread where the coroutine is running. Suspending saves memory over blocking while supporting many concurrent operations.
- Fewer Memory Leaks: Coroutine follow the principle of structured concurrency to run operation within a scope. 
- Built-in cancellation support: We are able to cancel any specific job.
- JetPack Integration: Support coroutines even it has his own coroutine scope
- When you block the main thread making a long running operation, the OS can’t be able to call the onDraw Method; that means that the user is going to see the famous ANR (Android Not Responding)

	//This code create a new coroutine to avoid to run the Long operation in the main thread and do it in the IO Thread.
	viewModelScope.launch(Dispatchers.IO) {
  		…
        }

- viewModelScope is a predefine Coroutine Scope that is included with the ViewModel KTX Extension. 
	dependencies {
		    implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-android:1.3.9'
	} 

- All Coroutine must run in a scope. A CoroutineScope manages one or more related coroutines. 
- launch is a function that creates a coroutine and dispatches the execution of its functions body to the corresponding dispatcher (Main, IO, Default)
- (Scope when every coroutine is working in every view Model)
- (When a ViewModel is destroyed)
- When the ViewModel is destroyed because is navigating away from the screen, viewModelScope is automatically cancelled, and all running coroutines are canceled as well. 
- Main-safe is when a function doesn’t block the main thread. To make a call main-safe we can add the withContext(Dispatchers.IO) from the coroutine library to move the execution of a coroutine to a IO thread. 
- Suspend keyword enforce that the function must be called inside a coroutine scope. 
- (Cases when we don’t need to add the suspend keyword)
- When the last suspend function we are calling (Maybe in UseCase or Repository) the main-safe function, now, our code in the ViewmModel doesn’t need to have the different thread. The only thing we need to perform is to add the CoroutineScope and that’s all; the main-safe function handle our return info without blocking our Main Thread. If we want parallelism, we can use async and await.
- (Cases using withContext, async and await)
- (Cases using every thread)
- When we are using the couroutine scope (viewModelScope) inside the view model and call the function launch (that is creating a coroutine and dispatch the execution to the thread send by param) and we don’t specify any thread, the default thread is the main thread. So, we have to be strongly carefully when we are using this coroutine scope. 
- Once, the withContext finish to perform the code inside itself, the mainThread continue running the code in the main thread as specify in the viewModel coroutine. 
- Using LiveData/StateFlow to communicate to the View. Because we are running our code in the main thread, we can directly call the MutableLiveData SetValue.
- Handling exception is perform by try/catch.

Class LoginViewModel (
	private loginRepository: LoginRepository
) : ViewModel {

	fun makeLoginRequest(username: String, token: String) {
		viewModelScope.launch {
			val result = try { 
				loginRepository,makeLoginRequest(param)
			} catch(e: Exception) {
				Result.Error(Exception(“Network Request Failed”))
			}
			when (result) {
				is Result.Success<LoginResponse> -> //Happy Path
				else -> //Show Error in UI.
			}
		}
	}
}

- Suspend keyword pauses the execution of the current coroutine, saving all local variables.
- Resume continues execution of a suspended functions or by using a coroutine builder such as launch to start a new coroutine.  (Implicitly)
- We can call the launch function to invoke/call another suspend function without block the code?
- Dispatchers.Main -> Interacting with the UI and performing quick work like calling suspend functions, running android UI framework operations and updating LiveData Objects. 
- Dispatchers.IO -> Optimized to perform disk or Network I/O
- Dispatchers.Default -> CPU-intensive work outside of the main thread like sorting a list and parsing JSON.
- Good practice is to have the withContext in the final method to always be sure that we have our method as a Main-safe. 
- Using async, await and awaitAll 

Suspend fun fetchTwoDocs() = 
	coroutineScope {
		val deferredOne = async { fetchDoc(1) }
		val deferredTwo = async { fetchDoc(2) }
		deferredOne.await()
		deferredTwo.await()
	}

awaitAll

Suspend fun fetchTwoDocs() =
	coroutineScope {
		val deferred = listOf(
			async { fetchDoc(1) }
			async { fetchDoc(2) }
		)
		deferreds.awaitAll()
	}



- We can create our custom coroutine the perform a job, like:

Class ExampleClass {
	
	val scope = CoroutineScope(Job() + Dispatchers.Main)

	fun exampleMethod() {
		scope.launch {
			fetchDocs()
		} 	}
	
	fun cleanUp() {
		scope.cancel()
	}
}

- Launch/async return a Job that unique identify every coroutine. 

	val job = score.launch { … }
	job.cancel()
