## Jetpack Compose
It is the modern and latest UI Toolkit using declarative approach
<br>Before it was ButterKnife, findViewById, ViewBinding

<br><b>How recomposition works?</b> Only the affected part re-renders, not the whole screen.

<br><b>remember</b>	Holds state across recompositions &&
<b>mutableStateOf</b>
<br>var name by remember { mutableStateOf("Chagi") }

<br>LaunchedEffect	Launches coroutine.

<br><b>SideEffect:</b> Runs after every successful recomposition, but only once per recomposition.

<br>State hoisting	Moving state ownership from child to parent.

<br>Modifier	Chains UI modifications (padding, click).
