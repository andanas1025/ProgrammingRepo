## Android Interview Questions

**Previous experience with android**

**What components does an Android application have?** activities, services, etc.

**Life cycle of an activity and a fragment?**

**What is a data class and what makes it different from a normal class?**

**How do you get the viewModel instances?**

**When is a new view model created and when is an existing one reused?**

**How do you configure a view model to associate it with a view?**

**What is the main feature of the MVI architecture?**

**Difference between MVP and MVVM**

**Difference between a service and an intent service**

**Knowledge of content providers and broadcast receiver**

## Android Modules

**What are the hashcode and equals methods for and what is the relationship between them?**

**What RxJava operators do you know?**

**Difference between map, flatmap, switchmap; example of each.**

**Difference between a hot stream and a cold stream**

**What is backpressure in RxJava?**

**What is the difference between different observables in RxJava (Flowable, Observable, Single, Maybe, Completable)?**

**Difference between Dagger and Koin**

**How do you configure Koin in an app?**

**How to work with a multi module app using dagger?**

**OutOfMemory and ANRs - Why they occur, how to avoid them**

**Explain how to develop a WhatsApp-type chat app, architecture, steps, etc.**

**What is an exception and what types do you know?**

**What is an Object? (Kotlin)**

**What is a companion object and when to use it?**

**Late init**

**GitFlow**

**When to use the Epoxy library (RecyclerViews)**

**Design patterns you know**

**Types of design patterns**

**How is the Builder pattern implemented?**

**What is a subcomponent of Dagger?**

**Advantages of using Kotlin over Java**

**What are the components of Android?**

**Differences between implicit and explicit Intent**

**Unit testing with mockito**

**Motion Layout**

**Abstract Class vs Interface**

**Visibility modifiers in Kotlin**

**When to use LiveData and when to use Rx in (repository and viewmodel)**

**What is the advantage of LiveData over Rx?**

**Differences between Zip, Merge, Concat in Rx**

**How to configure Dagger**

**Could I use another observeOn, subscribeOn in the same request when I already have observeOn and subscribeOn configured?**

**Differences between a LiveData and a MutableLiveData**

Android Interview questions
Interview: Specialist -  Nov 10, 2022
Slot 1: Cardwel

**¿Qué tipo de patrones de arquitecturas conoces?**
He usado MVP y ultimamente MVVM con Clean Architecture

Nota: Es relevante conocer sobre MVI, que diferencias hay entre cada una y por qué tomar cada arquitectura. La recomendada por Google es MVVM. 

**¿Cuál fue la última arquitectura que usaste? Crear un diagrama de alto nivel**
(Mostre un diagrama que tengo) Explique porque los UI Elements entran a ser parte de la Presentation Layer en Clean adoptando Compose como herramiento de construcción de vistas; También de cómo los resources pueden interactuar con la Data Layer y la Presentation Layer… Si usas DataStore, sabes que los archivos .proto hacer parte de los resources, por eso la interacción con esta capa (Data)

Note: Al utilizar MVVM, la UI layer (presentación) es agnôstica; es decir, es independiente la “arquitectura” que usamos en esta capa, ya que la lógica radica en el ViewModel y los Fragments, Activities, CustomViews, Compose, etc trabajan con el Patrón de Diseño Passive View.

**¿Cuándo crear un módulo?**
Con el fin de no tener aplicaciones monolíticas, es importante segmentar funcionalidades, pero siempre hay que tener en cuenta que tanta visión proporciona negocio sobre esta funcionalidad y así tomar una buena decisión, creando o uniendo a un módulo existente.

Note: Es relevante cuando el proyecto va a crecer exponencialmente; así, podemos ir enfocando la aplicación a que trabaje con Dynamic features y/o snapshots para bajar los tiempos de compilación y manejo per se

**¿Por qué Compose cambió la arquitectura que manejas?** Mostrar diagrama
Mostrando el diagrama… los componentes ahora pueden reaccionar directamente a cambios de estado desde donde fueron creados, por lo que mucha lógica ya puede estar en el mismo componente, de esta manera se puede decir que tienen responsabilidades compartidas de la capa presentation

**¿Cómo debe ser la comunicación entre módulos en una app?**
Puede ser un mix de fachadas o observer pattern

Note: Interfaces; así, podemos hacer MockTest de las clases y no tener que implementar algunas clases que no son necesarias para el path que estamos trabajando.

**¿Deberías tener un activity y muchos fragmentos? Discusión en un diagrama…**
Esto depende mucho del objetivo del activity, en un buen diseño, entre más segmentada esté la responsabilidad, no debería darse el escenario de un activity con muchos fragmentos

Note: Es lo que recomienda Google; no obstante, hay otro principio Solid (Single Responsibility) que debemos de aplicar; por consiguiente, podemos tener una activity para la sección de SignIn/Sign Up, otro para la ventana principal donde vamos a tener todos los accesos a nuestra aplicación.

**¿Cómo y por qué usar Deep Links? ¿Tienes arquitectura de Deep Links?**
Los deep links se usan para crear una navegación de origen externo e interno, por ejemplo, si ves un post en una red social que conduce al detalle de un producto, este es un deep link de origen externo, pero hay casos, donde internamente puedes navegar de una parte de la app a otra de forma sencilla.

**¿Teniendo navegación con deep links, cómo debería ser la comunicación entre módulos, activities y fragments?**
Expliqué cómo desde un Deep Link Activity puedes disparar a otros lados, faltó más claridad y exactitud en la explicación acá.

**¿Cómo crear una cultura de aprendizaje en un equipo grande?**
Compartiendo conocimiento, involucrando a los devs desde los juniors hasta los seniors y creando soluciones con propuestas de todos, que sea un tema donde se tenga en cuenta la opinión de todos
también. Expliqué que era importante que el equipo nunca perdiera el hambre de aprender, que las cosas mañana se podían hacer mejor que hoy y que nadie debe dar la impresión que lo sabe todo.

Al final habían minutos para hacer un espacio de code review, pero no se pudo, era construir una coroutine en una single activity
Slot 2: Erin

**¿Tipos de launch mode de un activity en el Manifest?**
No recordé la respuesta. Respuesta: https://developer.android.com/guide/topics/manifest/activity-element

**¿Tipos de intents?**
Implicitos y explicitos. El explícito es cuando específicas un destino, por ejemplo:

Intent i = new Intent(getApplicationContext(), ActivityTwo.class);  
startActivity(i);  
Implícito no lleva el destino, por ejemplo:  Intent intent=new Intent(Intent.ACTION_VIEW);  
intent.setData(Uri.parse(“https://www.geeksforgeeks.org”));  
startActivity(intent);  
Más información: https://www.geeksforgeeks.org/difference-between-implicit-intent-and-explicit-intent-in-android/

**¿diferencia entre los tipos de dispatchers usados en una coroutine?**
Recordé, Main, Default y IO… Faltó el confined y el Unconfined

Más información: https://kotlinlang.org/docs/coroutine-context-and-dispatchers.html#dispatchers-and-threads

**Diferencias entre el unconfined y el IO dispatcher**
Más información: https://kotlinlang.org/docs/coroutine-context-and-dispatchers.html#dispatchers-and-threads

**Diferencia entre async vs launch coroutines, dar ejemplos de aplicación**
Async devuelve un deferred del que luego se obtiene el resultado esperado, mientras que el launch retorna un job que no lleva cualquier valor.

Mas información: https://kotlinlang.org/docs/composing-suspending-functions.html#concurrent-using-async

**¿Explicar un flujo donde se persisten datos y luego se obtienen, tanto de localstorage como de un endpoint?**
Usar un data source, tanto como endpoint como un archivo de datastore o SharedPreferences, gestionar el llamado desde un repository, posteriormente mapear los datos (o en su defecto procesar una excepción recibida por el datasource) que se necesitan en la capa de negocio y a su vez procesar de ser necesario lógica de negocio en un UseCase. Luego de que la información llegue al viewmodel, se gestionan los cambios de estado correspondientes hacia la vista o contexto que haya disparado el flujo o esté observando la respuesta respectiva. Esta pregunta está más basada en experiencia y determina cómo he trabajado un flujo común en cualquier aplicación.

**¿cómo o qué criterios se tienen al momento de elegir una arquitectura?**
Dependiendo del lenguaje, la tecnología y el problema en algunos casos. Al comienzo cuando empecé a trabajar en Android, use MVP…Luego cuando Google hizo oficial a Kotlin como lenguaje para Android, la mayoría de herramientas que se iban publicando se adaptaban mucho más a un MVVM, por lo que en pro de sacar el máximo rendimiento y potencial de estas herramientas, ahora es mucho más conveniente usar MVVM con Clean Architecture. En resumen, las arquitecturas van muy de la mano con las herramientas, con el lenguaje y finalmente con el problema que resuelven las aplicaciones.

**¿Has trabajado DataStore? ¿Por qué es mejor que SharedPreferences?** Dar ejemplo de aplicación.
Bueno, cada herramienta tiene sus ventajas y desventajas, sin duda, el poder evitar los ARN producidos en algunos casos por los manejos de datos con sharedpreferences y sin lugar a dudas el poder gestionar ese storage de forma asíncrona, le da mucha ventaja a DataStore. En algunos casos, cuando se necesitan encriptar los datos antes de persistirlos, es mucho mas viable hacerlo de forma asíncrona con DataStore.

Más información: https://proandroiddev.com/is-jetpack-datastore-a-replacement-for-sharedpreferences-efe92d02fcb3

**Dar ejemplos de Compose aplicado**
Cuando vas a empezar a utilizar un sistema de diseño, esta tecnología proporciona enormes beneficios entre los ya conocidos. Tener componentes pre-creados con un parametrización que permita adaptarlos a los diferentes diseños de pantallas, sin duda dará mucha velocidad de desarrollo al equipo y una estandarización de componentes que al final del día ayuda a darle identidad a una aplicación.

Más información: https://medium.com/dvt-engineering/what-are-the-benefits-of-using-androids-jetpack-compose-9d962fed0109

**¿En qué parte de la arquitectura se deben procesar las exception?**
En la capa de datos, si usas Repository, ahi!

Note: En Walmart utilizamos un wrapper que nos va a llevar la información en caso de success, loading or error. Normalmente, es un Flow con esa información; no obstante, usando el operador stateIn nos permite convertirlo a un Hot Stream.

**Diferencia entre LiveData y StateFlow, cuando usar el uno y el otro**
El StateFlow debe ser inicializado con un estado, el LiveData no. Otra particularidad es que viene en el unregister del consumidor; Live Data lo hace automáticamente cuando la vista pasa a estado PARADO mientras que Stateflow no lo hace.

Note: LiveData funciona como Cold Stream; en cambio, StateFlow funciona como Hot Stream y tiene un valor inicial por default. Dependiendo de lo que se quiera realizar, vamos a necesitar uno u otro. La diferencia radica en que el Cold Stream tiene que tener a obverser observando los valores para poder emitir; en cambio, el HotStream sigue emitiendo datos sin importar si alguien esté recibiendo algún dato.

Más información:
https://developer.android.com/topic/libraries/architecture/livedata
https://kotlinlang.org/api/kotlinx.coroutines/kotlinx-coroutines-core/kotlinx.coroutines.flow/-state-flow/

**¿Cómo gestionas los reportes de crashes y cómo delegas esto a los diferentes equipos que componen el proyecto?**
Lo primero es detectar la incidencia del issue, repeticiones, etc… Luego, si el equipo de plataforma o core lo puede resolver, debe ser atendido con máxima prioridad, los crashes no dan espera y los usuarios menos, replicar - resolver - replicar. Si es conveniente que un equipo en específico lo solucione y la criticidad lo permite, dejar que lo resuelvan, pero en resumen, se debe conocer primero el proceso de desarrollo en sí y luego tomar decisiones.

Interview: Intermediate - Dec 6, 2022
**Explain and define these subjects:**
* Activities
* Services (Foreground, Background)
* Intent flags
* Fragments
* ANR
* Memory leaks
* Coroutines
* RxJava
* Threads

**Code challenge:**
**Rearrange the array elements so that all negative numbers appear before all positive numbers.**
Input: -12, 11, -13, -5, 6, -7, 5, -3, -6
Output: -12 -13 -5 -7 -3 -6 11 6 5
Interview: Intermediate -  Dec 6, 2022
Subscriptions team

Slot 1: Sandhya (Android)
Code challenge: Construir una app Android que muestre productos en una lista (RecyclerView), aplicando una arquitectura MVVM y conceptos de Clean Architecture.

Mas información: 
* Guide to app architecture | Android Developers
* UI layer | Android Developers
* Create dynamic lists with RecyclerView | Android Developers
* ListAdapter | Android Developers
* Coroutines guide | Kotlin Documentation
* Kotlin coroutines on Android
* StateFlow and SharedFlow | Android Developers
* ViewModel overview | Android Developers
* LiveData overview | Android Developers
* Use Kotlin coroutines with lifecycle-aware components | Android Developers

Slot 2: Andy (Kotlin)
Dada la siguiente clase, refactorizar utilizando la función apply{} de Kotlin y luego implementar la misma lógica con menos líneas de código.
class Message(message: String, signature: String) {
   val body = MessageBody()
   init {
       body.text = message + "\n" + signature
   }
}

Solución: 
class Message(message: String, signature: String) {
   val body = MessageBody().apply {
       text = message + "\n" + signature
   }
}

Más información: 
Scope functions | Kotlin Documentation Coding conventions > Scope functions apply/with/run/also/let  | Kotlin Documentation


Escribir una función de extensión que convierta un booleano en un número entero, Después, si es necesario, refactorizar para que sea más concisa.
Solucion 1: Esta fue la primera que probé, pero Andy pidió luego que la refactorizara para hacerla mucho mas corta y concisa.
fun Boolean.toInteger(): Int {
   return if (this) {
       1
   } else {
       0
   }
}
 Solucion 2: Luego del refactor solicitado por Andy.
fun Boolean.toInteger() = if (this) 1 else 0
 Mas informacion: Functions | Kotlin Documentation Functions > Single-expression functions  | Kotlin Documentation Extensions | Kotlin Documentation



Explicar qué hace el siguiente código.
val aVar by lazy {
   println("I am computing this value")
   "Hola"
}

Respuesta: Se crea una variable aVar con un bloque lazy. Esto quiere decir que la instancia de aVar no se crea hasta la primera vez que sea utilizada. 
Dentro del closure que recibe la función lazy, primero se imprime “I am computing this value” en consola, y a continuación se retorna el String “Hola”, el cual es el valor que va a tomar la variable aVar desde que sea utilizada por primera vez, y el cual no podrá ser modificado debido a que la variable es de solo lectura.
Más información: Delegated properties | Kotlin Documentation Delegated properties > Standard delegates  > Lazy properties  | Kotlin Documentation


Crear una función que, dando como entrada el parámetro CIS|SPID  , se obtenga como salida CIS.
Respuesta: Se usa la función de extensión String.substringBefore(“”) pasandole como parámetro el string “|”.
Mas información: Strings | Kotlin Documentation kotlin.text - Kotlin Programming Language


Explicar qué hace el siguiente código:
fun handleFailure(failure: Failure, retryCall: () -> Unit) {
   if (true) {
       onErrorState(GlobalErrorStateView.ErrorType.NETWORK, retryCall)
   }
   else {
       onErrorState(GlobalErrorStateView.ErrorType.GENERIC, retryCall)
   }
}

handleFailure(failure) {
   submit()
}

Respuesta: La función handleFailure recibe dos parámetros: uno de tipo Failure y otro llamado retryCall, el cual es un Closure (otra función) que no recibe parámetros y no retorna nada.
Dentro de la funcion handleFailure se ejecuta un bloque if donde siempre se ejecuta una función onErrorState(), la cual recibe 2 parámetros: el primero es de tipo GlobalErrorStateView.ErrorType, cuyo valor varía en función de si se cumple o no la condición del if; y el segundo el cual es la función retryCall.
Más abajo, se ejecuta la función handleFailure(), teniendo como parámetros una instancia de Failure y una función anónima dentro de la cual se ejecuta otra función llamada submit().
Por como está definida la función handleFailure() siempre se va a llamar a la función onErrorState() con los parámetros GlobalErrorStateView.ErrorType.NETWORK y la función retryCall.
Mas informacion: High-order functions and lambdas | Kotlin Documentation 


Slot 3: Rama (Behavioral interview)
**¿Cuál ha sido tu experiencia como Android Developer? ¿En qué proyectos has participado? **
Respuesta: Varía de acuerdo al entrevistado.

**Menciona 3 retos o funcionalidades que consideres como las más relevantes que has desarrollado durante tu tiempo como Android Developer.**

Respuesta: Varía de acuerdo al entrevistado. Acá puedes destacar una feature en la cual hayas usado una tecnología poco convencional, algún patrón o decisión de diseño que no sea común y haya servido para resolver el problema en cuestión, y/o cualquier proyecto que haya sido retador y satisfactorio.


**¿Cómo describes el trabajo que desempeñas dentro de un equipo?**

Respuesta: Teniendo en cuenta mi experiencia trabajando con Android, lo que más me gusta hacer es compartir lo que conozco con los demás miembros del equipo para darles una idea de cómo resolver sus retos técnicos. De igual manera, me gusta empoderar a mis compañeros para que ellos también hagan lo mismo y así construir una cultura de ayuda mutua y aprendizaje. 



Interview: Intermediate -  Apr 13, 2023
Rewards team
Slot 1:  45 minutes coding  (interviewer- Biswaraj) - https://codebunk.com/b
￼
Slot 2: 45 minutes design   (interviewer- Dimitare)  - https://app.coderpad.io/GT2A2GFJ
￼
Slot 3: 30 minutes of manager round interview (interviewer- Purushi)


Interview - May 29, 2023  (INDIA)
Slot 1 : Swapnamala Bhagat: Technical Round. (1 hr 15 min)
Interviewer name  - preyes.mahendra@walmart.com 
**1 Tell me about yourself and your previous projects.**
**2 Explain about your last project.**
**3 He asked - last project client name and my duration in the project and team size. (about duration I said 
 months next Q he asked why only 10 months? Contract issue or anything else?)
**
**4  What is MVVM?**
**5 What is clean architecure? **
**6 Why clean?**
**7 What do you mean by MVVM with clean?**

He asked me to share a screen open notepad and asked me to explain clean architecture with MVVM by taking a use case(he said let's take a login use case).

**8 Why coroutines?**
After my answer he said it's okay but explain to me how coroutines handle seq operations internally here in your code...internally how it works here in login use case
**9 How do you manage data which is coming from the data layer to domain to Vm and if its taking a long time in execution.**
* I asked Data manage means.. you expect from me here how to handle background tasks in MVVM n kotlin, right?
He said okay tell me about how you handle background tasks  and show data from background to UI.
* I explained coroutine dispatchers 
* Then I explained we use withContext() to switch from background thread to main thread

10 next he asked me write withContext() syntax in my code
11 different types of dispatchers n when to use what 
12 coroutines scopes - explain in your getLogin use case how you hanlde coroutine scopes.Write down scope for getLogin() 

13 Asked me to write syntax of IO dispatcher with launch block in my login use case n how it works
14 Swapanmala you said 1 line that “coroutines are non-blocking in case of long running operation” can you pls explain how they are  non-blocking?
15 Next he asked me to write syntax for suspend fun
16 explain how suspend fun internally suspend execution of your getLogin() ….how suspend actually suspend execution internally..how it works ..
17 Explain Unconfined coroutine use case 
18 He again checked my code n asked In your ViewModel how do you get useCase n loginData parameter in constructor? 
 
LoginViewModel(useCase:LoginUseCase,
data:LoginData):ViewModel{
}

19 Next he continuously asks how does your repository know about the LoginData n use case parameter?
20 How repository works internally.How internally repository takes data  
21 How do you process data which is coming from domain to presentation layer(Consider your data parsing is done using retrofit n all data is ready now tell me how do you process this data to view) 
Interview: Specialist - Jun 7, 2023  & Jun 12, 2023 (INDIA)
Slot 1 : Vaibhav Panchal: DSA Round. (1 hr)

1. https://leetcode.com/problems/move-zeroes/
2. https://leetcode.com/problems/valid-parentheses/
3. https://leetcode.com/problems/merge-two-sorted-lists/

Pattern : Writing the code and then optimizing it.

Slot 2 : Vaibhav Panchal: Android & Design Round (1hr)
Kotlin Questions :
1. **Difference between val and const val**
2. **What is Lateinit**
3. **Use of suspend function**
**4. What is Data class & difference between Data class and Class**
**5. What is sealed class**
**6. What is companion object**
**7. Difference between JRE, JDK, JVM**

Android Questions : 
**1. Different launch mode of android.**
**2. Lifecycle of Activity.**
**3. In which case onDestory is called without onPause**
**4. Purpose of Broadcast listener**
**5. Max size of SharedPref file.**
**6. Advantage of Room Database**
**7. Any instance of memory leakage and how did you solved it.**
**8. Purpose of code obfsocation**
**9. Step to publish APK on Playstore**
**10. Which testing framework you have used.**
**11. Which crash reporting tool you have used.**

Interview - Jun 12, 2023  (INDIA)
Slot 1 : Swanand Deshpande: DSA Round. (1 hr)

* Linear search with Recursion - Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1. You must write an algorithm with O(log n) runtime complexity.

* FInd all pairs of numbers with a given total.
Input array -  [8,7,2,5,3,1]
	Sum - 10
	OutPut = ({8,2}, {7,3})

* Find such element which appear only once from an array of duplicate numbers.
Note: In all the programs you need to achieve results with an optimized solution. Asks about Time & Space Complexity for the provided solutions.

Interview - Jun 16, 2023  (INDIA)
Slot 1 : Sandeep Bhoite : DSA Round. (1 hr)

* Linear search with Recursion - You must write an algorithm with O(log n) runtime complexity.

* FInd all pairs of numbers whose sum come as given target.
Input array -  [8,7,2,5,3,1]
	Sum - 10
	OutPut = ({8,2}, {7,3})

* Find how many numbers in list are less than current number .
Input array -  [3,7,2,5,4,1]
	
	OutPut = (2,5,1,4,3,0)

Note: In all the programs you need to achieve results with an optimized solution. Asks about Time & Space Complexity for the provided solutions.

## Extra Questions and Answers
**What is MVVM in Android app development?**
MVVM is a design pattern that separates the UI, business logic, and data layers of an Android application. The Model represents the data and business logic, the View displays the UI, and the ViewModel manages the communication between the View and the Model. MVVM is useful because it promotes separation of concerns and makes the code more modular, maintainable, and testable.

**What is the role of a Repository in MVVM, and how does it work?**
In MVVM, a Repository is responsible for handling data operations, such as fetching data from a network or database, and returning it to the ViewModel. The ViewModel then updates the View with the data. The Repository pattern decouples the ViewModel from the data source, making it easier to change the data source or add caching. The Repository pattern also promotes separation of concerns and improves testability.

**Can you explain the difference between a Service and a BroadcastReceiver in Android?**
A Service is a component that performs background tasks that do not require user interaction. A Service runs in the background even if the user navigates away from the app. A BroadcastReceiver, on the other hand, is a component that responds to system-wide events, such as battery low or network connectivity changes. A BroadcastReceiver does not have a user interface and is typically used to start a Service or update the UI.

**How do you implement unit testing in an Android app using MVVM?**
In MVVM, unit testing can be implemented at the ViewModel layer using test frameworks such as JUnit or Mockito. The ViewModel can be tested independently of the View and the data source, by mocking the dependencies and testing the logic and behavior of the ViewModel.

**What are some common memory leaks in Android, and how can they be prevented?**
Some common memory leaks in Android include leaked activities or fragments, leaked views or drawables, and leaked threads or handlers. To prevent memory leaks, it is important to release resources and to avoid holding onto references that are no longer needed. In MVVM, it is important to use lifecycle-aware components, such as LiveData and ViewModel, that automatically release resources when the component is destroyed. Also use the Android Profiler tool to detect and analyze memory leaks in the application.

**How do you handle configuration changes or orientation changes in an Android app using MVVM?**
In MVVM, configuration changes can be handled by retaining the ViewModel instance across configuration changes. This can be achieved by using the ViewModelProviders.of() method in the activity or fragment, and passing the activity or fragment instance as the owner. The ViewModelProviders framework automatically retains the ViewModel instance across configuration changes, and returns the same instance to the new activity or fragment instance. This ensures that the data is preserved across configuration changes, and the View can be updated accordingly.

**How do you implement a ViewModel in Kotlin for an Android app using MVVM?**
In Kotlin, you can create a ViewModel by extending the ViewModel class and defining your data and business logic in the class. You can then create a factory class that creates the ViewModel instance, and pass the factory to the ViewModelProviders.of() method in the activity or fragment. The ViewModel instance is automatically retained across configuration changes and can be shared across multiple activities or fragments. Or you can use the by viewModels() or by activityViewModels() property delegate to create a ViewModel instance in the activity or fragment, which simplifies the code.

**How do you handle nullability in Kotlin for Android development?**
Kotlin provides built-in null safety features, which help you avoid null pointer exceptions and improve the reliability of your code. You can declare a variable or parameter as nullable by adding a ? after the type. You can then use the safe call operator ?. , the Elvis operator ?: to safely access nullable variables and handle null values. or use the let and apply functions, which simplify null checking and make your code more concise.

**How do you implement data persistence in an Android app using MVVM and Kotlin?**
In Kotlin, you can use Room to implement data persistence in an Android app using MVVM. Room is a library that provides an abstraction layer over SQLite and makes it easier to store and retrieve data from a database. You can define the database schema in a RoomDatabase class, and use DAOs to perform CRUD operations on the data. You can also use LiveData to observe changes in the data and update the View accordingly.
Room provides compile-time validation, which means it detects errors in the SQL queries at compile-time rather than runtime.

**How do you handle network calls in an Android app using MVVM and Kotlin?**
In Kotlin, you can use Retrofit to handle network calls in an Android app using MVVM. Retrofit is a library that provides a type-safe HTTP client for Android and Java. You can define the API interface with Retrofit annotations, and use the enqueue method to perform the network call asynchronously. You can also use coroutines to perform the network call asynchronously and simplify the code. To handle errors and exceptions, you can use the onFailure method and the try-catch block.

**How do you implement pagination in an Android app using MVVM and Kotlin?**
You can use the Paging 3 library to implement pagination in an Android app using MVVM. Paging 3 is a library that provides a flexible and efficient way to load data from a data source incrementally. You can define a PagingSource that retrieves the data from the data source in batches, and use a PagingDataAdapter to display the data in a RecyclerView. You can also use the PagingState object to monitor the loading state and handle errors and exceptions.

**How do you implement data binding in an Android app using MVVM and Kotlin?**
In Kotlin, you can use the Data Binding library to implement data binding in an Android app using MVVM. Data Binding is a library that allows you to bind UI components in your layout files with data in your ViewModel. You can use the "@{expression}" syntax to bind the View properties with the ViewModel variables or functions. You can also use the @BindingAdapter annotation to create custom binding adapters that handle complex logic, such as image loading or formatting.

**How do you handle user input in an Android app using MVVM and Kotlin?**
In MVVM, you can handle user input by using LiveData to observe changes in the data and update the View accordingly. You can also use the @BindingAdapter annotation to bind the View with the ViewModel. For example, you can use a TwoWayBinding to bind an EditText with a MutableLiveData variable in the ViewModel, so that any changes in the EditText will automatically update the MutableLiveData variable, and any changes in the MutableLiveData variable will automatically update the EditText. (Ths example apply for data binding)

**How do you implement background tasks in an Android app using MVVM and Kotlin?**
In Kotlin, you can use coroutines or WorkManager to implement background tasks in an Android app using MVVM. Coroutines provide a lightweight and efficient way to perform asynchronous tasks on the main thread or on a background thread. You can use the suspend keyword to define a coroutine function, and use the withContext function to switch between the main thread and a background thread. WorkManager is a library that provides a flexible and robust way to schedule and execute background tasks, such as sync or backup. You can define a Workerclass that performs the task, and use the “enqueue” method to schedule the task.

**What is the difference between a View and a ViewModel in MVVM architecture?**
In MVVM architecture, a View is responsible for displaying the data and receiving user input, while a ViewModel is responsible for managing the data and the business logic. The View communicates with the ViewModel through data binding or LiveData, and the ViewModel communicates with the Model or the data source to fetch or update the data. The ViewModel also exposes the data and the state to the View, so that the View can update its UI accordingly.

**What are some best practices for designing a responsive UI in Android apps?**
Some best practices for designing a responsive UI in Android apps include using ConstraintLayout to create flexible layouts, using scalable and vector graphics to optimize the size and quality of the images, using RecyclerView to handle large datasets and improve the performance, using a consistent color scheme and typography to enhance the branding and readability, and testing the UI on different devices and screen sizes to ensure compatibility and accessibility.

**What are some advantages of using Kotlin over Java in Android development?**
Some advantages of using Kotlin over Java in Android development include the concise and expressive syntax that reduces the code complexity and verbosity, the null-safety feature that prevents common runtime errors such as NullPointerException, the interoperability with Java that allows to reuse the existing Java libraries and frameworks, the coroutines feature that simplifies asynchronous programming and improves the performance, and the support for functional programming that enables to write more concise and composable code.

**How do you implement dependency injection in an Android app using Dagger and Kotlin?**
Dependency injection is a design pattern that promotes loose coupling and modular design in an Android application. You can use the Dagger library to implement dependency injection in an Android app. Dependency injection is a technique that allows you to decouple the dependencies between classes and provide them at runtime. You can define a @Module class that provides the dependencies, and annotate the dependencies with the @Provides annotation. You can also define a “Component” interface that injects the dependencies into the classes, and annotate the classes with the @Inject annotation. In Dagger, you can use the @Component annotation to connect the Module and the Component, and generate the code for the dependency graph. You can use also Hilt

**How do you handle errors and exceptions in an Android app using MVVM and Kotlin?**
In MVVM, you can handle errors and exceptions by using LiveData to observe the data changes and the loading state, and by using try-catch blocks or coroutines to handle the errors and exceptions. You can define a ViewState object that contains the data, the loading state, and the error message, and use LiveData to observe the changes in the ViewState. You can also use try-catch blocks to catch the exceptions and update the ViewState with the error message, or use coroutines to handle the exceptions in a more asynchronous and structured way.

**What is the difference between val and var and const in Kotlin?**
In Kotlin, val is a keyword that is used to declare a read-only variable, while var is a keyword that is used to declare a mutable variable. A read-only variable can only be assigned a value once, and cannot be reassigned later, while a mutable variable can be assigned a value multiple times, and can be reassigned later. A const variable same as val can handle read-only values but this will be defined at compile-time.

**What are the differences between lambdas and anonymous functions in Kotlin?**
In Kotlin, lambdas and anonymous functions are both used to define function literals, which are functions that can be passed as arguments or returned as values. However, there are some differences between lambdas and anonymous functions in terms of syntax and behavior. Lambdas are enclosed in curly braces ({}) and have implicit parameters, while anonymous functions are enclosed in parentheses and have explicit parameters. Lambdas can have multiple exit points, such as return and break, while anonymous functions can only have one exit point, such as return@label. Lambdas can also have receiver objects, which are the objects on which they are called, while anonymous functions cannot. Lambdas are usually more concise and convenient than anonymous functions, but anonymous functions can be useful for specifying types or implementing interfaces.

**What are some common extension functions in Kotlin?**
Extension functions in Kotlin allow you to add new methods to existing classes or interfaces, without modifying their source code. Extension functions can be used to provide utility methods, convenience methods, or domain-specific methods, and can be organized into packages or modules. Some common extension functions in Kotlin include string manipulations, collection operations, mathematical computations, date and time conversions, and file and network operations. 

**What are some benefits of using Kotlin compared to Java?**
Kotlin offers several benefits over Java, such as better null-safety, concise and expressive syntax, higher-order functions and lambdas, improved type inference and type checking, support for coroutines and asynchronous programming, and interoperability with Java and other JVM languages.
However, Kotlin also has some drawbacks, such as a steeper learning curve for Java developers, slower compilation times for large projects, and potential compatibility issues with older Java versions or third-party libraries.

**What is a sealed class in Kotlin?**
A sealed class in Kotlin is a special type of class that can only be subclassed within the same file or module where it is declared. Sealed classes are useful for representing restricted hierarchies of classes, where all the possible subtypes are known in advance.

**What is a delegate in Kotlin?**
A delegate in Kotlin is a pattern that allows you to extract common behavior from a class and reuse it across multiple objects. Delegates is a good alternative to implementation inheritance.

**What are some differences between lateinit and lazy properties in Kotlin?**
Lazy properties are thread-safe by default, whereas lateinit properties are not. lateinit and lazy are two mechanisms for initializing properties lazily. There are some differences between lateinit and lazy properties in terms of their initialization, usage, and safety. lateinit is a modifier that can be applied to non-null properties that cannot be initialized in the constructor, and must be initialized before they are used. lateinit properties are initialized using the lateinit modifier and accessed using a nullable type. lazy is a function that can be called on a property to provide a lazy initialization block, which is executed when the property is accessed for the first time. lazy properties are initialized using a lambda expression and accessed using a non-null type.

**What are coroutines in Kotlin?**
Coroutines in Kotlin are a lightweight and efficient mechanism for concurrency and asynchronous programming, which allow you to perform long-running and blocking operations without blocking the main thread or creating multiple threads. Coroutines can be used to implement complex asynchronous workflows, such as network requests, database access, and UI updates.
What is the difference between let and apply in Kotlin?
let and apply are two extension functions in Kotlin that allow you to manipulate an object in a concise and fluent way. let is a higher-order function that takes an object as an argument and returns the result of a lambda expression applied to that object. apply is a member function that is called on an object and returns the same object after applying a lambda expression to it.

**What is a data class in Kotlin?**
A data class in Kotlin is a special type of class that is designed to hold data. Data classes are defined using the data keyword, and they must have at least one primary constructor parameter. Data classes automatically generate implementations of the standard functions based on their constructor parameters, which allows you to compare, hash, and print instances of the class without writing any code. Data classes are often used for representing domain objects, DTOs (Data Transfer Objects), and immutable values.

**What is the Elvis operator in Kotlin?**
The Elvis operator in Kotlin is a shorthand syntax for handling null values in expressions. The Elvis operator is represented by the ?: symbol, and it returns the left-hand side if it is not null, or the right-hand side if the left-hand side is null. The Elvis operator can be used to simplify null-checking, default values, and cascading operations. For example, instead of writing if (x != null) x.length else -1, you can write x?.length ?: -1 using the Elvis operator.

**What are some advantages of using Kotlin over Java for Android app development?**
Kotlin is a modern programming language that offers several advantages over Java for Android app development, including: improved syntax and readability, null-safety and type inference, interoperability with Java and other JVM-based languages, support for functional programming and reactive programming, simplified concurrency and asynchronous programming with coroutines, better support for Android Jetpack components such as LiveData, ViewModel, and Data Binding, and faster development and easier maintenance with fewer boilerplate code and improved IDE support. Kotlin is also fully supported by Google for Android app development, and has a growing community of developers and libraries.




Interview - Jun 20, 2023  (INDIA)
Slot 1 : Sayali Mankar: DSA Round. (1 hr)

1. Write a program to find out pair to get sum.
            Input array -  [8,7,2,5,3,1]
	Sum - 10
	OutPut = (8,2)
      2. Write a program to check Anagram strings.
      3. Tree DS transverse methods.
      4. Explain Graph DS.


Interview - Jun 5, 2023  (INDIA)
Divyang Panchal : Walmart - DSA Round. (1:30 hr)
Problem 1 - 	input array [2,4,1,5,7]
		output [2,6,7,12,21]
		output array should be addition of all previous digits, with time complexity     O(n)
		
Extra question on same
				- do it without if else
				- do it without using array index

Problem 2 -	input array [1,2,1,3,4,2,4]
		find non repeating digit from list with time complexity O(n)

Problem 3 - 	input array [1,4,6,3,-10,-5,5,10]
		find pair with max product with time complexity O(n)
