## OOP
Encapsulation → hide internal details → expose only what’s needed
getters/setters in ViewModel or Repository.

Inheritance → reuse code → child class extends parent
Activity → AppCompatActivity → your own MainActivity/ComponentActivity.

Polymorphism → same interface → different implementations
multiple ClickListener implementations for different UI components.

Abstraction → define what needs to be done, not how
using interfaces like Repository to hide data source details from ViewModel.

## Kotlin
Null Safety, Data classes (create POJO's easier), ext functions, High Order functions or lambdas, Coroutines,
Sealed classes/interfaces, Default Arguments, Delegate properties (By lazy)

By lazy (val): Only created when it's access for the first time. 
lateinit(var): Promise to Kotlin that I'm going to initialize. Throw an exception. 

## Android Runtime
Dalvik, ART, JIT, AOT in Android. 

## Jetpack Compose
- Declarative way
- Recomposition
- Kotlin first and type-safe (interoperability)
- Composable functions
- State like StateFLow
- MAterial design integration
- Previews
- Interoperabiity with XML
- Lifecycle aware (remember, LaunchEffect)

