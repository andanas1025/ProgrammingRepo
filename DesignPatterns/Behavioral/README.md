## Observer
Notify subscribers when data changes
<br>LiveData, Flow, RxJava

## Strategy
It makes it easy to swap methods or strategies without changing the main code.<br>
<code>
interface ImageLoaderStrategy {
    fun loadImage(url: String, imageView: ImageView)
}
class GlideLoader : ImageLoaderStrategy {
    override fun loadImage(url: String, imageView: ImageView) {
        Glide.with(imageView).load(url).into(imageView)
    }
}
class PicassoLoader : ImageLoaderStrategy {
    override fun loadImage(url: String, imageView: ImageView) {
        Picasso.get().load(url).into(imageView)
    }
}
// Usage
class ImageDisplayer(private var strategy: ImageLoaderStrategy) {
    fun display(url: String, imageView: ImageView) {
        strategy.loadImage(url, imageView)
    }

    fun setStrategy(newStrategy: ImageLoaderStrategy) {
        strategy = newStrategy
    }
}
</code>
