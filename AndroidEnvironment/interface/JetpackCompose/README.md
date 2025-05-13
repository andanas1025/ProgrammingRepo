## Jetpack Compose


Migration strategy
- Bottom up approach of migration: Start migrating some components using interoperability until tyou finish all the views 
- Start the migration with simples views like welcome, confirmation and settings screen. 
- Using Feature flags


We need an acitvity or fragment in order to render the UI.

<androidx.compose.ui.platform.ComposeView is the View that we need to add on the XML to have both kind of view in the same file.


Use DataBinding along with compose
val binding = DataBindingUtil.inflate<XFragment>(
	inflater, R.layout.xFragment, container, false
).apply {
	composeView.setContent {
		MaterialTheme {
			//Composable Functions
		}
	}
}

Desarrollo rápido, intuitivo

Programación declarativa, un paradigma usado para Jetpack Compose. 
XML usa la programación imperativa.
La mayoría de los lenguajes usan este nuevo paradigma
Genera menos errores 
Se crean interfaces de forma más simple y usa menos recursos. 
Se debe de seguir con principios de inmutabilidad. 
Se componen y descomponen para repintarse. 
Es soportado desde Arctic Fox -> IDE

New Project/Empty Compose Activity/{set a name and route} - minVersion API 23/finish

JC viene con una nueva funcionalidad para trabajar en vivo con el Preview, y agiliza el desarrollo.

JC se basa en funciones que son Composables, es decir que permite composición, y pueden descomponer y repintar. 
≈z xz  
setContent { ... }
//Todo lo que llevemos dentro, debe de ser elementos composables. 
	
Text{"..."}
//Muestra un texto en pantalla

Para que una función acepte composición debe de tener la etiquete @Composable
@Composable
fun MyText(text: String) { 
   Text(text)	
}


Para mostrar algo en el preview, debemos de agregar la etiqueta @Preview
@Preview
@Composable
fun MyText(text: String) {
   Text(text)
}

ComponentActivity es la clase que debe de heredarse para usar la activity en Compose
class MainActivity : ComponentActivity() { ... }

Column() { ... }
Nos permite agrupar una vista de bajo de la otra, ya que si no se hace, se terminaran interpolando. Lo hace de forma vertical.

Row() { ... }
Permite hacer lo mismo que Column, solo que esta vez se hará de forma horizontal.

Imagenes
Image(
    painter = painterResource(R.drawable.ic_launcher_foreground),
    contentDescription = "Prueba imagen"
)

Modificadores (Modifiers)
Tamaños, distancias, colores, fuentes
Row(modifier = Modifier.padding(8.dp))
Row(modifier = Modifier.padding (top = 8.dp))
Se puede aplicar en cualquier elemento.

Spacer = Espacios de altura y anchura
Spacer(Modifier.height(16.dp))

Modifier.background
//Agregar un color de fondo
modifier = Modifier.background(Color.Gray)

//Colocar imagen circular
modifier = Modifier.clip(CircleShape)

//Tamaño Fijo a las imágenes
modifier = Modifier.size(64.dp)

//Todos en uno
modifier = Modifier
	.size(64.dp)
	.clip(CircleShape)
	.background(Color.Gray)

Una buena práctica es colocar _Screen_ como suffix en las clases que contiene los métodos Composables

buildFeatures {
    compose true
}

Compose dependencies:
def composeBom = platform('androidx.compose:compose-bom:2022.10.00')
    implementation(composeBom)
    androidTestImplementation(composeBom)

    implementation "androidx.compose.runtime:runtime"
    implementation "androidx.compose.ui:ui"
    implementation "androidx.compose.foundation:foundation"
    implementation "androidx.compose.foundation:foundation-layout"
    implementation "androidx.compose.material:material"
    implementation "androidx.compose.runtime:runtime-livedata"
    implementation "androidx.compose.ui:ui-tooling"



Se pueden tener muchas previews simultáneamente

Se puede lanzar el emulador con el preview. En cada Preview al lado izquierdo, podemos ver un emulador que nos permitirá correr la app con esa preview.

@Preview(name = "CCC")
//Permite colocar un nombre para poder diferenciar entre un preview y otro

@Preview(showBackground = true)
//Muestra un fondo por default para poder ver mejor la información

@Preview(heightDp = 50, widthDp = 200)
//Le coloca un tamaño por default al Preview

@Preview(showSystemUi = true)
//Muestra como background del composable como si se estuviese mostrando en un dispositivo real

@Preview(apiLevel = 29)
//Permite cambiar la API que queremos usar 

@Preview(locale = XXX)
//Permite cambiar el idioma en el preview

@Preview(device = NEXUS)
//Permite escoger el dispositivo en el que queremo probar

La Preview no puede recibir parámetros ya que no sabe como se va a comportar; por consiguiente, podemos hacer un Composable que tenga el preview sin parámetros y llamar a otro Composable que  llame a esa porción del código que recibe el parámetro

Modifier.height(50.dp)
//Uso del DP

Modifier.fillMaxWidth
//Usar todo el ancho

Modifier.fillMaxHeight
//Usar toda la altura

Modifier.fillMaxSize
//Toma todo el ancho y el alto en un solo comando

Box
Parecido al FrameLayout. 
Permite alinear arriba al centro, a la izquierda, etc...
Podemos tener un box dentor de otro box

contentAligment = Alignment.CenterEnd
//Permite acomodar los nuevos componentes del box dentro de el. 
//Box(contentAlignment = Alignment.CenterEnd)

//Agregar Scroll vertical en el box
modifier.verticalScroll(rememberScrollState())

//Cambiar el color de fondo
modifier = Modifier.background(Color.Cyan)

//Usar weight para dar peso
Text("Ejemplo 1", modifier = Modifier.weight(1f)
Text("Ejemplo 2", modifier = Modifier.weight(1f)

//Dejar el espacio entre ellas tipo start/end con parent de Contraint Layout
Column(Modifier.fillMaxSize(), verticalArrangement = Arrangement.SpaceBetween) {
   Text("Ejemplo 1", modifier = Modifier.background(Color.Cyan))
   Text("Ejemplo 2", modifier = Modifier.background(Color.Green))
   Text("Ejemplo 3", modifier = Modifier.background(Color.Blue))
   Text("Ejemplo 4", modifier = Modifier.background(Color.Red))
}

//verticalArrangement = Arrangement.SpaceBetween = dejan todo el espacio entre ellos que se pueda. Parecido al chain en ConstraintLayout
