

# Class FonteCequeau::Params



[**ClassList**](annotated.md) **>** [**Params**](classFonteCequeau_1_1Params.md)



[_**Parametres**_](classParametres.md) _necessaires au module de fonte._






















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**coeffDeficitCalorique**](#variable-coeffdeficitcalorique)  <br>_Coefficient de deficit calorifique._  |
|  float | [**indexMurissementNeigeIni**](#variable-indexmurissementneigeini)  <br>_Valeur initiale de indexMurissementNeige._  |
|  float | [**indexTempNeigeIni**](#variable-indextempneigeini)  <br>_Valeur initiale de indexTempNeige._  |
|  int | [**jourSoleilMaxFonteNeige**](#variable-joursoleilmaxfonteneige)  <br> |
|  std::vector&lt; float &gt; | [**seuilTempFonteClairiere**](#variable-seuiltempfonteclairiere)  <br>_Seuil de température de fonte en clairiere (degC)._  |
|  std::vector&lt; float &gt; | [**seuilTempFonteForet**](#variable-seuiltempfonteforet)  <br>_Seuil de température de fonte en foret (degC)._  |
|  std::vector&lt; float &gt; | [**seuilTranformationPluieNeige**](#variable-seuiltranformationpluieneige)  <br>_Seuil de transformation pluie-neige (degC)._  |
|  std::vector&lt; float &gt; | [**tauxPotentielFonteClairiere**](#variable-tauxpotentielfonteclairiere)  <br>_Taux potentiel de fonte en clairière (mm/degC/jour)._  |
|  std::vector&lt; float &gt; | [**tauxPotentielFonteForet**](#variable-tauxpotentielfonteforet)  <br>_Taux potentiel de fonte en forêt (mm/degC/jour)._  |
|  std::vector&lt; float &gt; | [**tempMurissementNeige**](#variable-tempmurissementneige)  <br>_Temperature du murissement du stock de neige (degC)._  |












































## Public Attributes Documentation




### variable coeffDeficitCalorique 

_Coefficient de deficit calorifique._ 
```C++
float FonteCequeau::Params::coeffDeficitCalorique;
```




<hr>



### variable indexMurissementNeigeIni 

_Valeur initiale de indexMurissementNeige._ 
```C++
float FonteCequeau::Params::indexMurissementNeigeIni;
```




<hr>



### variable indexTempNeigeIni 

_Valeur initiale de indexTempNeige._ 
```C++
float FonteCequeau::Params::indexTempNeigeIni;
```




<hr>



### variable jourSoleilMaxFonteNeige 

```C++
int FonteCequeau::Params::jourSoleilMaxFonteNeige;
```



Parametre qui permet de decaler la date d'insolation maximale pour le calcul de la fonte de la neige. Si 80, la durée d'ensoleillement potentiel est maximale le 21 juin. 


        

<hr>



### variable seuilTempFonteClairiere 

_Seuil de température de fonte en clairiere (degC)._ 
```C++
std::vector<float> FonteCequeau::Params::seuilTempFonteClairiere;
```




<hr>



### variable seuilTempFonteForet 

_Seuil de température de fonte en foret (degC)._ 
```C++
std::vector<float> FonteCequeau::Params::seuilTempFonteForet;
```




<hr>



### variable seuilTranformationPluieNeige 

_Seuil de transformation pluie-neige (degC)._ 
```C++
std::vector<float> FonteCequeau::Params::seuilTranformationPluieNeige;
```




<hr>



### variable tauxPotentielFonteClairiere 

_Taux potentiel de fonte en clairière (mm/degC/jour)._ 
```C++
std::vector<float> FonteCequeau::Params::tauxPotentielFonteClairiere;
```




<hr>



### variable tauxPotentielFonteForet 

_Taux potentiel de fonte en forêt (mm/degC/jour)._ 
```C++
std::vector<float> FonteCequeau::Params::tauxPotentielFonteForet;
```




<hr>



### variable tempMurissementNeige 

_Temperature du murissement du stock de neige (degC)._ 
```C++
std::vector<float> FonteCequeau::Params::tempMurissementNeige;
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/FonteCequeau.h`

