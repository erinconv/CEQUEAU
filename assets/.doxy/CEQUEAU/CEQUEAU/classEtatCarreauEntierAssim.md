

# Class EtatCarreauEntierAssim



[**ClassList**](annotated.md) **>** [**EtatCarreauEntierAssim**](classEtatCarreauEntierAssim.md)



_Classe de donnees pour l'assimilation des etats d'un carreau entier._ [More...](#detailed-description)

* `#include <Simulation.h>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**evapoPotJour**](#variable-evapopotjour)  <br> |
|  TypeAssim | [**evapoPotJourType**](#variable-evapopotjourtype)  <br> |
|  int | [**iCarreauEntier**](#variable-icarreauentier)  <br> |
|  int | [**idCarreauEntier**](#variable-idcarreauentier)  <br> |
|  int | [**jCarreauEntier**](#variable-jcarreauentier)  <br> |
|  float | [**niveauEauLacsMarais**](#variable-niveaueaulacsmarais)  <br> |
|  TypeAssim | [**niveauEauLacsMaraisType**](#variable-niveaueaulacsmaraistype)  <br> |
|  float | [**niveauEauNappe**](#variable-niveaueaunappe)  <br> |
|  TypeAssim | [**niveauEauNappeType**](#variable-niveaueaunappetype)  <br> |
|  float | [**niveauEauSol**](#variable-niveaueausol)  <br> |
|  TypeAssim | [**niveauEauSolType**](#variable-niveaueausoltype)  <br> |
|  float | [**production**](#variable-production)  <br> |
|  TypeAssim | [**productionType**](#variable-productiontype)  <br> |
|  float | [**ruissellement**](#variable-ruissellement)  <br> |
|  TypeAssim | [**ruissellementType**](#variable-ruissellementtype)  <br> |












































## Detailed Description


Utilise pour assimiler des etats aux carreaux entiers. Une valeur: on substitue cette valeur. Deux valeurs: La premiere est un facteur multiplicatif et la seconde une valeur a additionner. 


    
## Public Attributes Documentation




### variable evapoPotJour 

```C++
float EtatCarreauEntierAssim::evapoPotJour[2];
```




<hr>



### variable evapoPotJourType 

```C++
TypeAssim EtatCarreauEntierAssim::evapoPotJourType;
```




<hr>



### variable iCarreauEntier 

```C++
int EtatCarreauEntierAssim::iCarreauEntier;
```




<hr>



### variable idCarreauEntier 

```C++
int EtatCarreauEntierAssim::idCarreauEntier;
```




<hr>



### variable jCarreauEntier 

```C++
int EtatCarreauEntierAssim::jCarreauEntier;
```




<hr>



### variable niveauEauLacsMarais 

```C++
float EtatCarreauEntierAssim::niveauEauLacsMarais[2];
```




<hr>



### variable niveauEauLacsMaraisType 

```C++
TypeAssim EtatCarreauEntierAssim::niveauEauLacsMaraisType;
```




<hr>



### variable niveauEauNappe 

```C++
float EtatCarreauEntierAssim::niveauEauNappe[2];
```




<hr>



### variable niveauEauNappeType 

```C++
TypeAssim EtatCarreauEntierAssim::niveauEauNappeType;
```




<hr>



### variable niveauEauSol 

```C++
float EtatCarreauEntierAssim::niveauEauSol[2];
```




<hr>



### variable niveauEauSolType 

```C++
TypeAssim EtatCarreauEntierAssim::niveauEauSolType;
```




<hr>



### variable production 

```C++
float EtatCarreauEntierAssim::production[2];
```




<hr>



### variable productionType 

```C++
TypeAssim EtatCarreauEntierAssim::productionType;
```




<hr>



### variable ruissellement 

```C++
float EtatCarreauEntierAssim::ruissellement[2];
```




<hr>



### variable ruissellementType 

```C++
TypeAssim EtatCarreauEntierAssim::ruissellementType;
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/Simulation.h`

