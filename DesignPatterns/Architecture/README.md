## Clean Architecture
Divide the code into separate layers
<br> Presentation, Domain, Data
<br> Repository is a middle layer between BL and Datasource. Decide where to get data (API or DB)

## MVC 
Activity/Fragment/CV handle UI and BL
<br>Hard to test and maintain

## MVP
Presenter handles the logic and update the view
<br>Act/Fra use the PassiveView pattern
Constantly validation of null objects

## MVVM
StateHolder(VM) -> Observable StateHolder (liveData/StateFlow) to expose data. 
It could have many resources/observable
<br> Separation of concerns - Tested isolated - Agnostic

## MVI
UDF - One SSOT - Perfect for compose - Use immutable Ui State
