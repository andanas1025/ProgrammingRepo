## Adapter
Convert one interface to another
<br>RecyclerView.Adapter
<br><code>class MyAdapter(private val items: List<String>) : RecyclerView.Adapter<MyViewHolder>() {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): MyViewHolder { /*...*/ }
    override fun onBindViewHolder(holder: MyViewHolder, position: Int) { /*...*/ }
    override fun getItemCount() = items.size
}
</code>

## Decorator
Add new features without modifying code
<br>Interceptors like OkHttp for retrofit

## Facade
Simplify complex systems with a wrapper
<br> Room with DAO
