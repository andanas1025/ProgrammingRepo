## Kotlin DSL

Link: https://devexperto.com/como-usar-kotlin-con-gradle-kotlin-dsl/


Cambiar el lenguaje de programacion de Groovy a Kotlin DSL
- Es interoperable.
- Permite ver los error de forma mas sencillas.
- La ventaja de Kotlin es que es un lenguaje estático, pero tiene una apariencia muy similar la de un lenguaje dinámico. Esto implica que el compilador nos puede ayudar con el autocompletado, y a la vez el código que tenemos que escribir es muy cercano a lo que escribiríamos con Groovy.
- Kotlin DSL es una pequeña variante de Kotlin que se puede usar para definir scripts, y es la que Gradle utiliza.
- 
 1. Adaptar ficheros

Groovy:
	classpath "com.android.tools.build:gradle:7.0.3"
DSL: 
	classpath("com.android.tools.build:gradle:7.0.3")


Groovy 	compileSdk 31

	defaultConfig {
		    applicationId "com.test.myapplication"
DSL
		compileSdk (31)

	defaultConfig {
		    applicationId ("com.test.myapplication")
 

Settings. gradle

Groovy: 
	include ':app'
DSL
	include(':app')

2. DSL trabaja con comillas dobles
	Groovy
		
	DSL
		api(platform(project(":depconstraints")))

