## Inline
Cuando marcas una función con inline, el compilador reemplaza las llamadas a esa función con su código directamente en 
tiempo de compilación.

Esto significa que el código se "pega" (inlines) donde se usa, en lugar de hacer una llamada normal a la función.

## 🧠 ¿Para qué sirve esto?
Evitar la sobrecarga de lambdas:
Las lambdas normalmente generan objetos (clases anónimas), lo que puede ser costoso si se usan muchas veces. Al hacer inline, el compilador copia el código de la lambda en el lugar donde se usa, eliminando la creación de objetos y llamadas adicionales.

Permitir reified:
Como el tipo genérico se conoce en tiempo de compilación, inline permite que funciones usen reified y mantengan el tipo en tiempo de ejecución.

## Ejemplo básico
```
inline fun showMessage(block: () -> Unit) {
    println("Antes")
    block()
    println("Después")
}

fun main() {
    showMessage {
        println("Hola desde el bloque")
    }
}
```

En tiempo de compilación se convierte en esto: 
```
println("Antes")
println("Hola desde el bloque")
println("Después")
```

