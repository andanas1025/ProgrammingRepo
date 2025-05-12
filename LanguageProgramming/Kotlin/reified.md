## Reified
La palabra clave reified permite preservar el tipo genérico en tiempo de ejecución. 
Normalmente, en Java y Kotlin los tipos genéricos se borran en tiempo de ejecución (type erasure), 
lo que significa que no puedes hacer cosas como: <br>
```
fun <T> doSomething(value: T) {
    if (value is String) { // ❌ Error: no se puede comprobar el tipo genérico
        ...
    }
}
```
Pero con reified puedes hacer eso porque el tipo se mantiene en tiempo de ejecución. Para usarlo, la función debe ser inline.

```
inline fun <reified T> printTypeName() {
    println(T::class.simpleName)
}

fun main() {
    printTypeName<String>() // Imprime: String
    printTypeName<Int>()    // Imprime: Int
}
```
