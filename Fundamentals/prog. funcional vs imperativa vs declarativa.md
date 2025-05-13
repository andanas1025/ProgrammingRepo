## Programación Imperativa
Es un estilo de programación donde le dices al computador cómo hacer algo paso a paso. Se enfoca en el "cómo".

**Características:**
Uso de asignaciones (variables mutables).

Control explícito del flujo del programa (for, if, while, etc.).

Cambios de estado (modificas valores a lo largo del tiempo).
```
val numbers = listOf(1, 2, 3, 4, 5)
val doubled = mutableListOf<Int>()
for (n in numbers) {
    doubled.add(n * 2)
}
println(doubled)
```
## Programación Funcional
Es un estilo donde describes qué quieres obtener, sin enfocarte en cómo lograrlo. Se basa en funciones puras y evita modificar el estado.

Características:
Funciones puras (sin efectos colaterales).

Evita variables mutables.

Se usan mucho funciones como map, filter, reduce.
```
val numbers = listOf(1, 2, 3, 4, 5)
val doubled = numbers.map { it * 2 }
println(doubled)
```

## Programación Declarativa
Es un enfoque más general que incluye a la programación funcional. Se basa en describir el resultado deseado sin especificar los pasos para obtenerlo. Es decir, se enfoca en el "qué", no en el "cómo". Jetpack Compose is a good example of it.
