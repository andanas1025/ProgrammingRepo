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

## Gradle
Build Type to build differents environments like Production or debugging
<br>Product Flavor -> free, Paid
<br>Variants -> freeProduction, freeDebugging, PaidProduction, PaidDebugging

## ProGuard, R8
Shrink, optimize, Obfuscate. Reduces APK Size, improve security
<br>I've been used R8 and customized ProGuard rules to avoid issues like reflective class loading or serialization errors, which are common when shrinking code.

## Day-to-day to review
https://app.daily.dev/search?q=android
<br>https://blog.cleancoder.com/uncle-bob/2016/11/10/TDD-Doesnt-work.html
<br>https://developer.android.com/topic/architecture
<br>https://developer.android.com/develop#core-areas
<br>https://developer.android.com/samples?language=kotlin
