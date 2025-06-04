## Clean Architecture
Divide the code into separate layers
<br> Presentation, Domain, Data
<br> Repository is a middle layer between BL and Datasource. Decide where to get data (API or DB)

**MVC**
<br>Activity/Fragment/CV handle UI and BL
<br>Hard to test and maintain

**MVP**
<br>Presenter handles the logic and update the view
<br>Act/Fra use the PassiveView pattern
Constantly validation of null objects

**MVVM**
<br>StateHolder(VM) -> Observable StateHolder (liveData/StateFlow) to expose data. 
It could have many resources/observable
<br> Separation of concerns - Tested isolated - Agnostic

**MVI**
<br>UDF - One SSOT - Perfect for compose - Use immutable Ui State

## Behavioral
**Observer**
Notify subscribers when data changes
<br>LiveData, Flow, RxJava

**Strategy**
It makes it easy to swap methods or strategies without changing the main code. interface the imageLoading and it could be implemented by different classes.<br>

## Creational

**Builder**
<br>👉 Used to build complex objects step by step.
<br>👉 Useful when an object has many optional parameters or needs to be created in
<br>AlertDialog is an Android Example

**Factory**
<br>👉 Used to create objects without exposing the creation logic.
<br>👉 You delegate the creation to a factory class or method, based on input.
<br>ViewModelProvider Factory

**Singleton**
<br>One single instance throughout the app or Global Scope
<br>Object or @Singleton annotation 

## Structural
**Adapter**
Convert one interface to another
<br>RecyclerView.Adapter
<br><code>class MyAdapter(private val items: List<String>) : RecyclerView.Adapter<MyViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder { /*...*/ }
    override fun onBindViewHolder(holder: MyViewHolder, position: Int) { /*...*/ }
    override fun getItemCount() = items.size
}
</code>

**Decorator**
Add new features without modifying code
<br>Interceptors like OkHttp for retrofit

**Facade**
Simplify complex systems with a wrapper
<br> Room with DAO
