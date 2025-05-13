## ViewModel

Configuration changes
- Keyboard changes
- Screen Rotations
- Language Changes
- Enabling multiwindows mode

- A model class for a view

//Viewmodel
implementation 'androidx.lifecycle:lifecycle-viewmodel-ktx:2.4.1'
//Tiene la ext que permite acceder de forma más sencilla al view model (viewModels())
implementation 'androidx.activity:activity-ktx:1.4.0'


Saved State Handle
androidx.lifecycle:lifecycle-viewmodel-savedstate:1.0.0-alpha01


- No need to override onSavedInstanceState and onRestoreInstanceState
- Viewmodel handle the information without rely on the view
- It is a key-value pair. We should only store amount of data.

ANTI-PATTERNS
- Create fragment that container the attribute as 'setRetainInstance' as true and inside that fragment we start to observe the livedata, it will be observing all the time. That is an anti-pattern due to we are going to make memory leaks using that fragment. we will wind up passing a new identical instance of Observer every time the fragment is re-attached, but LiveData won’t remove previous observers, because LifecycleOwner (Fragment) didn’t reach DESTROYED state. This eventually results in growing number of identical observers being active at the same time and same code from onChanged() being executed multiple times.

The recommended solution is to use fragment’s view lifecycle via getViewLifecycleOwner() or getViewLifecycleOwnerLiveData() which were added in Support Library 28.0.0 and AndroidX 1.0.0, so that LiveData will remove observers every time the fragment’s view is destroyed:

-  
- 


CODE

private val recentlyUrlViewModel: RecentlyUrlViewModel by viewModels()

//Using in fragment to share info
private val sharedViewModel: MainViewModel by activityViewModels()


Old Way
//View Model
class ExampleViewModel : VIewModel() {
	…
} 

//Activity
…
	private latent var viewModel: ExampleViewModel
…
	onCreate() {
		…
		viewModel = ViewModelProvider(this).get(ExampleViewModel::class.java)
		…
	}

When is the ViewModel's onCleared() called?
A ViewModel's onCleared() is called when the app is put into the background and the app process is killed in order to free up the system's memory.

View Model Factory
	class ExampleViewModelFactory(
		private val startingTotal: Int
	) : ViewModelProvider.Factory {

	override fun <T : ViewModel?> create(modelClass: Class<T>): T {
		if (modelClass.isAssignableFrom(ExampleViewModel::class .java) {
			return ExampleViewModel(startingTotal) as T
		}	
		throw IllegalArgumentException(“”Unknown View Model class)
	} 
//Activity
	…
	private lateinit var viewModelFactory: ExampleViewModelFactory
	…
	onCreate() {
		…
		viewModelFactory = ExampleViewModelFactory(120)
		viewModel = ViewModelProvider(this, viewModelFactory).get(ExampleViewModel::class.java)	
		…
	}


