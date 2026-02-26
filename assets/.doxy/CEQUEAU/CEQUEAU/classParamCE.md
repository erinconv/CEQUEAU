

# Class ParamCE



[**ClassList**](annotated.md) **>** [**ParamCE**](classParamCE.md)



[_**Parametres**_](classParametres.md) _spatialisables._[More...](#detailed-description)

* `#include <Parametres.h>`





















## Public Attributes

| Type | Name |
| ---: | :--- |
|  float | [**coeffEmmagasinement**](#variable-coeffemmagasinement)  <br> |
|  float | [**coeffInfiltrationNappe**](#variable-coeffinfiltrationnappe)  <br>_Coefficient d'infiltration dans le réservoir NAPPE._  |
|  float | [**coeffVidangeBasseNappe**](#variable-coeffvidangebassenappe)  <br>_Coefficient de vidange basse du réservoir NAPPE._  |
|  float | [**coeffVidangeHauteNappe**](#variable-coeffvidangehautenappe)  <br>_Coefficient de vidange haute du réservoir NAPPE._  |
|  float | [**coeffVidangeIntermediaireSol**](#variable-coeffvidangeintermediairesol)  <br>_Coefficient de vidange intermédiaire du réservoir SOL._  |
|  float | [**conductiviteHydraulique**](#variable-conductivitehydraulique)  <br> |
|  float | [**fractionImpermeableCE**](#variable-fractionimpermeablece)  <br>_Fraction de surface imperméable des carreaux entiers (de 0.0 à 1.0)._  |
|  float | [**hauteurReservoirSol**](#variable-hauteurreservoirsol)  <br>_Hauteur du réservoir SOL (mm)._  |
|  float | [**lameEauDebutRuisellement**](#variable-lameeaudebutruisellement)  <br>_Lame d'eau nécessaire pour que débute le ruissellement sur les surfaces impermeables (mm)._  |
|  float | [**seuilInfiltrationSolVersNappe**](#variable-seuilinfiltrationsolversnappe)  <br>_Seuil d'infiltration du réservoir SOL vers le réservoir NAPPE (mm)._  |
|  float | [**seuilPrelevementEauTauxPotentiel**](#variable-seuilprelevementeautauxpotentiel)  <br>_Seuil de prélévement de l'eau à taux potentiel, par évapotranspiration (mm)._  |
|  float | [**seuilTempFonteClairiere**](#variable-seuiltempfonteclairiere)  <br>_Seuil de température de fonte en clairiere (degC)._  |
|  float | [**seuilTempFonteForet**](#variable-seuiltempfonteforet)  <br>_Seuil de température de fonte en foret (degC)._  |
|  float | [**seuilTranformationPluieNeige**](#variable-seuiltranformationpluieneige)  <br>_Seuil de transformation pluie-neige (degC)._  |
|  float | [**seuilVidangeHauteNappe**](#variable-seuilvidangehautenappe)  <br>_Seuil de vidange supérieure du réservoir NAPPE (mm)._  |
|  float | [**seuilVidangeIntermediaireSol**](#variable-seuilvidangeintermediairesol)  <br>_Seuil de vidange intermédiaire du réservoir SOL (mm)._  |
|  float | [**tauxPotentielFonteClairiere**](#variable-tauxpotentielfonteclairiere)  <br>_Taux potentiel de fonte en clairière (mm/degC/jour)._  |
|  float | [**tauxPotentielFonteForet**](#variable-tauxpotentielfonteforet)  <br>_Taux potentiel de fonte en forêt (mm/degC/jour)._  |
|  float | [**tempMurissementNeige**](#variable-tempmurissementneige)  <br>_Temperature du murissement du stock de neige (degC)._  |
















## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**ParamCE**](#function-paramce) () <br> |




























## Detailed Description


[**Parametres**](classParametres.md) obligatoires dont la valeur peut etre modifiee pour chaque carreau entier a l'aide de vecteurs facultatifs. 


    
## Public Attributes Documentation




### variable coeffEmmagasinement 

```C++
float ParamCE::coeffEmmagasinement;
```




<hr>



### variable coeffInfiltrationNappe 

_Coefficient d'infiltration dans le réservoir NAPPE._ 
```C++
float ParamCE::coeffInfiltrationNappe;
```




<hr>



### variable coeffVidangeBasseNappe 

_Coefficient de vidange basse du réservoir NAPPE._ 
```C++
float ParamCE::coeffVidangeBasseNappe;
```




<hr>



### variable coeffVidangeHauteNappe 

_Coefficient de vidange haute du réservoir NAPPE._ 
```C++
float ParamCE::coeffVidangeHauteNappe;
```




<hr>



### variable coeffVidangeIntermediaireSol 

_Coefficient de vidange intermédiaire du réservoir SOL._ 
```C++
float ParamCE::coeffVidangeIntermediaireSol;
```




<hr>



### variable conductiviteHydraulique 

```C++
float ParamCE::conductiviteHydraulique;
```




<hr>



### variable fractionImpermeableCE 

_Fraction de surface imperméable des carreaux entiers (de 0.0 à 1.0)._ 
```C++
float ParamCE::fractionImpermeableCE;
```




<hr>



### variable hauteurReservoirSol 

_Hauteur du réservoir SOL (mm)._ 
```C++
float ParamCE::hauteurReservoirSol;
```




<hr>



### variable lameEauDebutRuisellement 

_Lame d'eau nécessaire pour que débute le ruissellement sur les surfaces impermeables (mm)._ 
```C++
float ParamCE::lameEauDebutRuisellement;
```




<hr>



### variable seuilInfiltrationSolVersNappe 

_Seuil d'infiltration du réservoir SOL vers le réservoir NAPPE (mm)._ 
```C++
float ParamCE::seuilInfiltrationSolVersNappe;
```




<hr>



### variable seuilPrelevementEauTauxPotentiel 

_Seuil de prélévement de l'eau à taux potentiel, par évapotranspiration (mm)._ 
```C++
float ParamCE::seuilPrelevementEauTauxPotentiel;
```




<hr>



### variable seuilTempFonteClairiere 

_Seuil de température de fonte en clairiere (degC)._ 
```C++
float ParamCE::seuilTempFonteClairiere;
```




<hr>



### variable seuilTempFonteForet 

_Seuil de température de fonte en foret (degC)._ 
```C++
float ParamCE::seuilTempFonteForet;
```




<hr>



### variable seuilTranformationPluieNeige 

_Seuil de transformation pluie-neige (degC)._ 
```C++
float ParamCE::seuilTranformationPluieNeige;
```




<hr>



### variable seuilVidangeHauteNappe 

_Seuil de vidange supérieure du réservoir NAPPE (mm)._ 
```C++
float ParamCE::seuilVidangeHauteNappe;
```




<hr>



### variable seuilVidangeIntermediaireSol 

_Seuil de vidange intermédiaire du réservoir SOL (mm)._ 
```C++
float ParamCE::seuilVidangeIntermediaireSol;
```




<hr>



### variable tauxPotentielFonteClairiere 

_Taux potentiel de fonte en clairière (mm/degC/jour)._ 
```C++
float ParamCE::tauxPotentielFonteClairiere;
```




<hr>



### variable tauxPotentielFonteForet 

_Taux potentiel de fonte en forêt (mm/degC/jour)._ 
```C++
float ParamCE::tauxPotentielFonteForet;
```




<hr>



### variable tempMurissementNeige 

_Temperature du murissement du stock de neige (degC)._ 
```C++
float ParamCE::tempMurissementNeige;
```




<hr>
## Public Functions Documentation




### function ParamCE 

```C++
ParamCE::ParamCE () 
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/Parametres.h`

