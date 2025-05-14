## Set
- Lista de favoritos sin duplicados

- Set usa equals() y hashCode() para evitar duplicados, así que usar data class es clave
```
data class Product(val id: String, val name: String)
```
```
class FavoritesViewModel : ViewModel() {
    // backing property
    private val _favoriteSet = MutableStateFlow<Set<Product>>(emptySet())
    val favoriteSet: StateFlow<Set<Product>> get() = _favoriteSet
    fun toggleFavorite(product: Product) {
        _favoriteSet.value = _favoriteSet.value.toMutableSet().apply {
            if (!add(product)) remove(product) // alterna: si ya existe, quítalo
        }
    }
    fun isFavorite(product: Product): Boolean {
        return _favoriteSet.value.contains(product)
    }
}
```

## Operaciones a ejecutar
```
val favorites: Set<Product> = ...
```
**Productos con precio mayor a 100.0:** favorites.filter { it.price > 100.0 }
**Encontrar el primero de la categoria Entertainment:** favorites.find { it.category == "Electronics" }
**Verificar que todos son de la misma categoria(Books):** favorites.all { it.category == "Books" }
**Hay algun elemento con precio 0.0?:** val hasFreeItem = favorites.any { it.prices == 0.0 }
**Agrupar por categoria:** val groupedByCategory: Map<String, List<Products>> = favorites.groupBy { it.category }
**Ordenar por precio ascendente:** val sortedFavorites = favorites.sortBy { it.price }
**Transformar a una lista de nombres:** favorites.map { it.name }
