HILT

Components scope lecture
https://www.valueof.io/blog/components-scope-dagger-hilt

Anvil (square…otro tipo de inyecciones)
https://developer.squareup.com/blog/introducing-anvil/

Dagger Hilt: Sale de Dagger pero la implementación es más sencilla
Kodein
Dagger 
Service Locator

DI Principle:  Conjunto de tecnicas para disminuir el acoplamiento de las clases.

Dagger hilt se compila al momento de correr la app
El Martillo crea la app pero no la instala; asi podemos comprobar que hilt está bien configurado.


Paso 1:
Project/Gradle
	classpath "com.google.dagger:hilt-android-gradle-plugin:$hilt_version"
	ext.hilt_version = '2.41'
Con este 
       classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:1.5.21"
para evitar bugs del gradle corrupt


Paso 2
app/gradle
plugins {
	...
	id 'kotlin-kapt' //Nos genera las clases por cada anotación que usaremos.
	id 'dagger.hilt.android.plugin'
	...
}

Paso 3
1. Tener Java 8 en el compile options
2. Agregar la dependencia de Hilt

	implementation "com.google.dagger:hilt-android:$hilt_version" 
	kapt "com.google.dagger:hilt-android-compiler:$hilt_version"

Paso 4
1. Crear una clase application 

	NOMBRE-PROJECT-APP.class

2. Ir al Manifest y colocarlo en la etqueta de Application, la clase que creamos
3. Colocarle la annotation: @HiltAndroidApp

Paso 5

Luego, debemos de preparar nuestras actividades y viewmodels

@AndroidEntryPoint
class Activity...

Asi, permitimos que esta clase esté preparada.

@HiltViewModel
class TestViewModel @Inject constructor (
	private val classToInject: ClassToInject
)

1. Annotation
2. @Inject Constructor

Además, la clase a inyectar, debe de estar preparada de la siguiente manera:  class ClassToInject @Inject constructor() { ... }


Paso 6
Hay algunas clases se inyectan como en el paso 5; no obstante, hay algunas clases que no nos permiten 
inyectar de esa manera, como lo es Retrofit. Para ello, se pueden crear módulos que através del patrón de 
diseño factory, nos permite inyectar la clase.

Nota: Si usamos el @InstallIn y no le seteamos que va a ser un Singleton, en la misma actividad, vamos a tener 3 instancias distintas.

1. Crear un object 
2. Colocar @Module
3. Setear el alcance con: @InstallIn(). Para Retrofit, se le coloca: SingletonComponent::class que usará el scope de la aplicación ya que se va a usar en muchas partes dentro de la aplicación.
4. Crear un método para proveer la clase. Usar la annotation @provide. Para evitar crear una instancia nueva, también agregamos: @Singleton
5. Esto también debe de ser aplicado para todas las interfaces que tengamos personales o de alguna libreria. 
6. 

@Module
@InstallInt(SingletoComponent::class)
object NetworkModule {
	
	@Singleton
	@Provides
	fun provideRetrofit(): Retrofit {
		return Retrofit.Builder()
				.baseUrl("")
				.addConverterFactory(GsonConverterFactory.create())
				.build()
	}

	@Singleton
	@Provides
	fun provideClassCliente(retrofit: Retrofit): ClassCliente {
		return retrofit.create(ClassCliente::class.java)
	} }

interface ClassCliente {
	@GET("/.json")
	suspend fun getAllData(): Response<List<OwnClass>>
}


Helpers
￼



Lecturas
https://dagger.dev/hilt/android-entry-point.html
https://developer.android.com/training/dependency-injection/manual

