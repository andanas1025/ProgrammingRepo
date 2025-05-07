## SOLID
S -> Only must do one thing - UseCase with the invoke operator (CRUD).
<br>O -> Open for extension, closed for extension. We should able to add new funcionalities without modifying the existing code. The extension functions help us to accomplish this.
<br>L -> Child class should behave like their parent
<code>
open class BaseViewHolder(view: View) : RecyclerView.ViewHolder(view)
class UserViewHolder(view: View) : BaseViewHolder(view)
class ProductViewHolder(view: View) : BaseViewHolder(view)</code>
<br>IS -> Click Listener for specific actions
<br>DI -> Depend on abstractions - Hilt or interfaces

# Other values
DRY -> Don't repeat yourself
KISS -> Keep it simple stupid
SSOT -> Single Source of truth
UDF -> Unidirectional Data Flow
WYSIWYG -> What you see is what you get
