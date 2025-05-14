fun main() {
    val productsWithHighPrice = getProductsWithHighPrices()
    val productsWithHighPriceCount = productsWithHighPrice.count()
    val allProductsCount = productDatabase.count()
    println("Count of all the products: " + allProductsCount)
    println("Count of high product values(Over 100.0): " + productsWithHighPriceCount)
    println("Count of low product values(below 100.0): " + (allProductsCount - productsWithHighPriceCount))
	println("List of high product values:" + getProductsWithHighPrices())
    println("First Entertainment product found:" + getFirstElectronicsProduct())
    println("All products are books?:" + if (getAllProductsThatAreBooks()) "Yes" else "No")
	println("Show categories grouped by Categories:" + productDatabase.groupBy { it.category })
    println("Get All Categories:" + getAllCategories())
}

fun getAllCategories(): Set<String> {
    return productDatabase.map { it.category }.toSet()
}

fun getAllProductsThatAreBooks(): Boolean {
    //In this case, using the operator "all" and validate with "category" means that it's validating 
    //if all the products are Books as category
    return productDatabase.all { it.category == "Books" }
}

fun getFirstElectronicsProduct(): Product? {
    return productDatabase.find { it.category == "Electronics" }
}

fun getProductsWithHighPrices(): List<Product> {
	return productDatabase.filter { it.price > 100.0}
}

data class Product(
    val id: String,
    val name: String,
    val price: Double,
    val category: String
)

val productDatabase = setOf(
    Product(id = "p001", name = "Laptop", price = 1200.0, category = "Electronics"),
    Product(id = "p002", name = "Headphones", price = 150.0, category = "Electronics"),
    Product(id = "p003", name = "Book: Kotlin in Action", price = 45.0, category = "Books"),
    Product(id = "p004", name = "Coffee Mug", price = 12.0, category = "Home"),
    Product(id = "p005", name = "USB Cable", price = 8.0, category = "Electronics"),
    Product(id = "p006", name = "Notebook", price = 5.0, category = "Books"),
    Product(id = "p007", name = "Smartphone", price = 850.0, category = "Electronics"),
    Product(id = "p008", name = "Desk Lamp", price = 40.0, category = "Home"),
    Product(id = "p009", name = "Pen", price = 1.5, category = "Office"),
    Product(id = "p010", name = "Backpack", price = 65.0, category = "Accessories")
)
