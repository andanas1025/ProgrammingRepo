## RX

3. Relay

A Relay is basically a Subject, but without the ability to call onComplete() and onError(), thus it's constantly able to emit data.
This allows us to create bridges between different types of API without worrying about accidentally triggering the terminal state.
To use RxRelay we need to add the following dependency to our project:

Types
4.1. PublishRelay
This type of Relay will reemit all events once the Observer has subscribed to it.
The events will be emitted to all subscribers:

4.2. BehaviorRelay
This type of Relay will reemit the most recent observed event and all subsequent events once the Observer has subscribed:



FlatMap
	Transform an observable but return an observable too
	Good practive when we need to fetch two service, the first one could be a movie list, and then, we can 
	use their location to fetch other details in another service.

Map
	transforms the items emitted by an observable by applying a function to each item
	LIke to transform the last name of the student into upper case

Create
	Create an observable from scratch  by means of a function
	We can create a for each and starting sending every object while we aren iterabling.

Range
	Create an observablethat emits a particular range of sequentials integers 
	Observable.range(1, 20) //start, until
From
	Convert various objects and data types into observables
		FrromArray
		 	private val array = listOf("A", "B", "C")
			Observable.fromArray(array)
			
			We can do this with any primitive type
		FromPublisher 
		FromCallable
		FromFuture
		FromIterable

Just
Only emit one single value. We can send many Strings and every string must sent one by one, but this doesn't works
if we want to use an array
Observable.just(false)
Single.just(false)


disposable.add(
changeAddressController.getCostsForChangingAddress(orderId, address.id.toString())
.applySchedulers()
.doOnSubscribe { showLoading(true) }
.doOnSuccess { selectAddress(address) }
.doFinally { showLoading(false) }
.subscribe(this::handleAddressCosts, this::handleErrorAddressCosts)


disposable.add(Singles.zip(
    ratingStorekeeperController.getSummaryFully(orderId),
    ratingStorekeeperController.getConfigTitles()
) { summary, configTitles ->
    handleSummary(summary, configTitles)
}
    .applySchedulers()
    .doOnSubscribe { showLoader() }
    .doOnError { hideLoader() }
    .doOnSuccess { hideLoader() }
    .subscribe({}, this::showError)
)

Singles utiliza un metodo de RxKotlin para no tener que usar Bifunction, Function3, etc...

orderTrackingController.getOrder(orderId)
+                .doOnNext { shouldCloseIfIsNotLegacy(it.legacyOrder) }
+                .filter { it.legacyOrder }
+                .applySchedulers()
+                .subscribe({ Unit }, Throwable::printStackTrace)


 .onErrorResumeNext(repository.getOrderFromApi(orderId))

.switchMap { repository.getOrderFromApi(it).toObservable() }

orderTrackingController.getOrder(orderId)


                 .applySchedulers()
+                .doOnNext { shouldCloseIfIsLegacy(it.legacyOrder) }
+                .filter { it.legacyOrder.not() }
                 .doOnNext { setMapSize(it.map) }
                 .doOnNext { addEtaIfExists(it.getEta()) }
                 .map(Order::widgets)



actionsSubject.onNext(UiActions.ShowPossiblePlaceCloseMessage)



disposables += orderStatusController.getActiveOrders()
        .map { it.isNotEmpty() }
        .toObservable()
        .flatMap { hasOrdersInProgress ->
            if (!hasOrdersInProgress) {
                deleteObservable.andThen(creditCardController.loadCardsAndInstallments())
                        .map { mapToItems(it) }
                        .map { getLastUiModel().copy(itemsToShow = it, isLoading = false) }
                        .toObservable()
            } else {
                throw Exception(resourceProvider.getString(R.string.credit_cards_no_delete_during_order))
            }
        }.startWith(getLastUiModel().copy(isLoading = true))
        .doOnError { handleError(it.message) }
        .onErrorReturnItem(getLastUiModel().copy(isLoading = false))
        .observeOn(AndroidSchedulers.mainThread())
        .subscribe { stateSubject.accept




some methods renamed, and new methods added (refer to the details at https://github.com/ReactiveX/RxJava/wiki/What's-different-in-3.0)

flatMap()
flatMap() wraps each item being emitted by an Observable letting you apply its own RxJava operators including assigning a new Scheduler using subscribeOn() to handle those operators. Once all items inside flatMap() have been processed, the individual Observables are then merged back into a single Observable in no particular order.

concatMap()
concatMap() is similar to flatMap() but guarantees that the order of the items processed is the same as in the original emission.

flowOn
This is an operator which changes the context (dispatcher particularly) on which flow is working.

launchIn
One important thing about collect function is that it is suspending. That means that when we call collect execution is suspended until flow is finished.

So if you put inside same coroutine two collect functions, then first one will effectively block second from execution:

flowOf
With flowOf we have similar situation as with Observable.just. If you put some calculation (suspending) then it will be done in the outer scope and not affected by flowOn:

flatMapMerge concurrency and parallelism
To find out how Kotlin Flow works with flatMapMerge (analog of RxJava flatMap) we’ll use few test examples:


Here we have flow which is collected on d1 dispatcher. The flow has two items, which are flat mapped onto two other items each. And we have single flowOn on the d2 dispatcher. In the code we’ve added onEach call with information on the thread on which execution happens.

Zip operator strictly pairs emitted items from observables. It waits for both (or more) items to arrive then merges them. So yes this would be suitable for your needs.



