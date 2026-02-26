

# Class ParamFacultatifs



[**ClassList**](annotated.md) **>** [**ParamFacultatifs**](classParamFacultatifs.md)



_Classe de donnees pour les parametres facultatifs._ 

* `#include <Parametres.h>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  std::map&lt; int, double &gt; | [**coeffTxParticuliers**](#variable-coefftxparticuliers)  <br>_Coefficients de transfert particuliers._  |
|  std::vector&lt; int &gt; | [**lacExutoire**](#variable-lacexutoire)  <br>_Liste de l'appartenance des carreaux entiers a une zone de lac exutoire (precipitations directes)_  |
|  std::map&lt; int, int &gt; | [**lacs**](#variable-lacs)  <br> |
|  std::multimap&lt; [**DateChrono**](classDateChrono.md), [**ValeurZone**](classValeurZone.md) &gt; | [**relevesNeige**](#variable-relevesneige)  <br>_Releves de neige remplacant les stocks de neige calcules aux dates donnees._  |
|  std::map&lt; int, float &gt; | [**superficieCPAmontCorriges**](#variable-superficiecpamontcorriges)  <br>_Corrections des superficies des carreaux partiels._  |
|  std::map&lt; int, float &gt; | [**surfacesImper**](#variable-surfacesimper)  <br>_Liste fraction de surface impermeable de carreau entier._  |
|  TypeAjustementNeige | [**typeAjustementNeige**](#variable-typeajustementneige)  <br> |












































## Public Attributes Documentation




### variable coeffTxParticuliers 

_Coefficients de transfert particuliers._ 
```C++
std::map<int, double> ParamFacultatifs::coeffTxParticuliers;
```




<hr>



### variable lacExutoire 

_Liste de l'appartenance des carreaux entiers a une zone de lac exutoire (precipitations directes)_ 
```C++
std::vector<int> ParamFacultatifs::lacExutoire;
```




<hr>



### variable lacs 

```C++
std::map<int, int> ParamFacultatifs::lacs;
```



Permettent de tenir compte, pour le calcul des coefficients de transfert, des lacs chevauchant plusieurs carreaux partiels, ou encore d'exclure du carreau partiel les lacs non situes sur le reseau d'écoulement 


        

<hr>



### variable relevesNeige 

_Releves de neige remplacant les stocks de neige calcules aux dates donnees._ 
```C++
std::multimap<DateChrono, ValeurZone> ParamFacultatifs::relevesNeige;
```




<hr>



### variable superficieCPAmontCorriges 

_Corrections des superficies des carreaux partiels._ 
```C++
std::map<int, float> ParamFacultatifs::superficieCPAmontCorriges;
```




<hr>



### variable surfacesImper 

_Liste fraction de surface impermeable de carreau entier._ 
```C++
std::map<int, float> ParamFacultatifs::surfacesImper;
```




<hr>



### variable typeAjustementNeige 

```C++
TypeAjustementNeige ParamFacultatifs::typeAjustementNeige;
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/Parametres.h`

