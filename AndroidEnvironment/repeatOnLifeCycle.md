## The repeatOnLifecycle API should be used with viewLifecycleOwner

When you write
viewLifecycleOwner.lifecycleScope.launch {
  repeatOnLifecycle(Lifecycle.State.STARTED) {
    // {code to collect from viewModel}
  }
}
The repeatOnLifecycle is an extension on a LifecycleOwner - here, you are implicitly using this - i.e., the Fragment's Lifeycle and most important not the Fragment View Lifecycle.
As seen in the documentation, you should explicitly be using viewLifecycleOwner.repeatOnLifecycle, which is exactly what the Lint check is telling you to use:
viewLifecycleOwner.lifecycleScope.launch {
  viewLifecycleOwner.repeatOnLifecycle(Lifecycle.State.STARTED) {
    // {code to collect from viewModel}
  }
}

