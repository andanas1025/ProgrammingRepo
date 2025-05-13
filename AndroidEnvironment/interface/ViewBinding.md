ViewBinding

android {
...
	buildFeatures {
	    viewBinding true
	}
...

Fragment

private var _binding: Fragment...Binding? = null
privarte val binding get() = _binding!!

override fun onCreateView(...) {
	...
	_binding = Fragment...Binding?.inflate(inflater, container, false)
	return binding.root
}

override fun onStart() {
	...
	binding.textVIew...
	...
}

override fun onDestroyView() {
	binding = null
	super.onDestroyView()
}
