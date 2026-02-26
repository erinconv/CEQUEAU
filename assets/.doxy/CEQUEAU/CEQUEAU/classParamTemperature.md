

# Class ParamTemperature



[**ClassList**](annotated.md) **>** [**ParamTemperature**](classParamTemperature.md)



_Classe de donnees des parametres qualite relatifs a la temperature de l'eau._ 

* `#include <ParametresQualite.h>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**bassol**](#variable-bassol)  <br>_Lame de precipitation totale permettant de detecter les jours de faible rayonnement solaire._  |
|  float | [**ccanope**](#variable-ccanope)  <br>_couverture du sol par la canopé de la forêt (entre 0.0 et 1.0)_  |
|  float | [**cconve**](#variable-cconve)  <br>_Coefficient convection._  |
|  float | [**cevapo**](#variable-cevapo)  <br>_Coefficient evaporation._  |
|  float | [**corsol**](#variable-corsol)  <br>_Correction du rayonnement solaire moyen._  |
|  float | [**crayin**](#variable-crayin)  <br>_Coefficient rayonnement infrarouge._  |
|  float | [**crayso**](#variable-crayso)  <br>_Coefficient rayonnement solaire._  |
|  float | [**crigel**](#variable-crigel)  <br>_Critere de gel._  |
|  float | [**hombre**](#variable-hombre)  <br> |
|  float | [**panap**](#variable-panap)  <br>_Parametre permettant d'ajuster la temperature de l'ecoulement souterrain arrivant en riviere._  |
|  float | [**tinit**](#variable-tinit)  <br>_Temperature moyenne de l'eau sur l'ensemble du bassin versant estimee au premier jour des simulations._  |
|  float | [**tnap**](#variable-tnap)  <br>_Temperature moyenne annuelle des eaux souterraines sur le bassin versant._  |












































## Public Attributes Documentation




### variable bassol 

_Lame de precipitation totale permettant de detecter les jours de faible rayonnement solaire._ 
```C++
float ParamTemperature::bassol;
```




<hr>



### variable ccanope 

_couverture du sol par la canopé de la forêt (entre 0.0 et 1.0)_ 
```C++
float ParamTemperature::ccanope;
```




<hr>



### variable cconve 

_Coefficient convection._ 
```C++
float ParamTemperature::cconve;
```



Coefficient permettant d'augmenter ou de diminuer l'importance de la convection dans le bilan d'énergie 


        

<hr>



### variable cevapo 

_Coefficient evaporation._ 
```C++
float ParamTemperature::cevapo;
```



Coefficient permettant d'augmenter ou de diminuer l'importance de l'évaporation dans le bilan d'énergie 


        

<hr>



### variable corsol 

_Correction du rayonnement solaire moyen._ 
```C++
float ParamTemperature::corsol;
```



Correction du rayonnement solaire moyen (RSM) pour les jours sans pluie (RSM x (1+CORSOL)) et les jours de fortes pluies (RSM x (1-CORSOL)) (entre 0.0 et 1.0). 


        

<hr>



### variable crayin 

_Coefficient rayonnement infrarouge._ 
```C++
float ParamTemperature::crayin;
```



Coefficient permettant d'augmenter ou de diminuer l'importance du rayonnement infrarouge dans le bilan d'energie. 


        

<hr>



### variable crayso 

_Coefficient rayonnement solaire._ 
```C++
float ParamTemperature::crayso;
```



Coefficient permettant d'augmenter ou de diminuer l'importance du rayonnement solaire dans le bilan d'energie. 


        

<hr>



### variable crigel 

_Critere de gel._ 
```C++
float ParamTemperature::crigel;
```




<hr>



### variable hombre 

```C++
float ParamTemperature::hombre;
```




<hr>



### variable panap 

_Parametre permettant d'ajuster la temperature de l'ecoulement souterrain arrivant en riviere._ 
```C++
float ParamTemperature::panap;
```




<hr>



### variable tinit 

_Temperature moyenne de l'eau sur l'ensemble du bassin versant estimee au premier jour des simulations._ 
```C++
float ParamTemperature::tinit;
```




<hr>



### variable tnap 

_Temperature moyenne annuelle des eaux souterraines sur le bassin versant._ 
```C++
float ParamTemperature::tnap;
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/ParametresQualite.h`

