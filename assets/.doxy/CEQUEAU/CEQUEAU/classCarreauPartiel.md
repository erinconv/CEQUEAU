

# Class CarreauPartiel



[**ClassList**](annotated.md) **>** [**CarreauPartiel**](classCarreauPartiel.md)



_Definition d'un carreau partiel._ [More...](#detailed-description)

* `#include <CarreauPartiel.h>`





































## Public Functions

| Type | Name |
| ---: | :--- |
|   | [**CarreauPartiel**](#function-carreaupartiel) (int id, char codeCarreauPartiel, int pctSurface, int iCarreauEntier, int jCarreauEntier, int idCarreauPartielAval, int idCarreauxPartielsAmont, int idCarreauEntier, int pctEau, int pctForet, int pctMarais, int pctSolNu, int altitudeMoyenne, int profondeurMinimum, int longueurCoursEauPrincipal, int largeurCoursEauPrincipal, int penteRiviere, int cumulPctSuperficieCPAmont, int cumulPctSuperficieLacsAmont, int cumulPctSuperficieMaraisAmont, int cumulPctSuperficieForetAmont, float superficieCarreauEntier, int pctFermetureFutaie, float indiceFoliaire, float custom\_1, float custom\_2, int lat, int lon, int pctFeuillu, int pctConifer, double hautMoyenneArbre, int azimutCoursEau) <br>_Constructeur._  |
|  int | [**altitudeMoyenne**](#function-altitudemoyenne) () const<br>_Getter altitude moyenne (metres)._  |
|  int | [**azimutCoursEau**](#function-azimutcourseau) () const<br>_Getter azimutCoursEau._  |
|  float | [**calculerCorrectionDebit**](#function-calculercorrectiondebit) () const<br> |
|  char | [**codeCarreauPartiel**](#function-codecarreaupartiel) () const<br>_Getter Code du carreau partiel (A - B - C ou D)._  |
|  double | [**coeffTransfert**](#function-coefftransfert-12) () const<br>_Getter Coefficient de transfert pour le pas de temps d'une journee._  |
|  void | [**coeffTransfert**](#function-coefftransfert-22) (double valeur) <br>_Setter coefficient de transfert pour le pas de temps d'une journee._  |
|  int | [**cumulPctSuperficieCPAmont**](#function-cumulpctsuperficiecpamont) () const<br> |
|  int | [**cumulPctSuperficieForetAmont**](#function-cumulpctsuperficieforetamont) () const<br> |
|  int | [**cumulPctSuperficieLacsAmont**](#function-cumulpctsuperficielacsamont) () const<br> |
|  int | [**cumulPctSuperficieMaraisAmont**](#function-cumulpctsuperficiemaraisamont) () const<br> |
|  float | [**custom\_1**](#function-custom_1) () const<br>_Getter Custom\_1._  |
|  float | [**custom\_2**](#function-custom_2) () const<br>_Getter Custom\_2._  |
|  double | [**hautMoyenneArbre**](#function-hautmoyennearbre) () const<br>_Getter hautMoy._  |
|  int | [**iCarreauEntier**](#function-icarreauentier) () const<br>_Getter Abscisse I du carreau entier auquel appartient le carreau partiel._  |
|  int | [**id**](#function-id) () const<br>_Getter Id du carreau partiel._  |
|  int | [**idCarreauEntier**](#function-idcarreauentier) () const<br>_Getter Id du carreau entier auquel il appartient._  |
|  int | [**idCarreauPartielAval**](#function-idcarreaupartielaval) () const<br>_Getter Id du carreau partiel dans lequel il se jette._  |
|  const int \* | [**idCarreauxPartielsAmont**](#function-idcarreauxpartielsamont) () <br>_Getter Liste des id des cinq carreaux affluents possible._  |
|  float | [**indiceFoliaire**](#function-indicefoliaire) () const<br>_Getter Indice foliaire._  |
|  int | [**jCarreauEntier**](#function-jcarreauentier) () const<br>_Getter Ordonnée J du carreau entier auquel appartient le carreau partiel._  |
|  int | [**largeurCoursEauPrincipal**](#function-largeurcourseauprincipal) () const<br>_Getter Largeur du cours d'eau principal sur la parcelle (1/10 de metres)._  |
|  int | [**latitude**](#function-latitude) () const<br>_Getter latitude._  |
|  int | [**longitude**](#function-longitude) () const<br>_Getter longitude._  |
|  int | [**longueurCoursEauPrincipal**](#function-longueurcourseauprincipal) () const<br>_Getter Longueur du cours d'eau principal sur la parcelle (1/10 de km)._  |
|  int | [**pctConifer**](#function-pctconifer) () const<br>_Getter pctConifer._  |
|  float | [**pctEau**](#function-pcteau) () const<br>_Getter Poucentage d'eau sur le carreau partiel._  |
|  int | [**pctFermetureFutaie**](#function-pctfermeturefutaie) () const<br>_Getter Pourcentage fermeture futaie._  |
|  int | [**pctFeuillu**](#function-pctfeuillu) () const<br>_Getter pctFeuillu._  |
|  float | [**pctForet**](#function-pctforet) () const<br>_Getter Poucentage de foret sur le carreau partiel._  |
|  float | [**pctMarais**](#function-pctmarais) () const<br>_Getter Poucentage de marais sur le carreau partiel._  |
|  float | [**pctSolNu**](#function-pctsolnu) () const<br>_Getter Poucentage de sol deboise sur le carreau partiel._  |
|  float | [**pctSurface**](#function-pctsurface) () const<br>_Getter Pourcentage du carreau partiel par rapport au carreau entier (0 a 1)._  |
|  int | [**penteRiviere**](#function-penteriviere) () const<br>_Getter Pente de la riviere sur le carreau partiel (1/1000 de metres/km)._  |
|  int | [**profondeurMinimum**](#function-profondeurminimum) () const<br>_Getter Profondeur minimum (1/100 de metres)._  |
|  void | [**superficieCPAmontCorrige**](#function-superficiecpamontcorrige) (float valeur) <br>_Setter superficieCPAmontCorrige._  |
|  float | [**volumeInitial**](#function-volumeinitial-12) () const<br>_Getter Volume d'eau initial._  |
|  void | [**volumeInitial**](#function-volumeinitial-22) (float valeur) <br>_Setter Volume d'eau initial._  |
|   | [**~CarreauPartiel**](#function-carreaupartiel) () <br> |




























## Detailed Description


Definition d'un carreau partiel selon les donnees physiographiques PREPAREES. 


    
## Public Functions Documentation




### function CarreauPartiel 

_Constructeur._ 
```C++
CarreauPartiel::CarreauPartiel (
    int id,
    char codeCarreauPartiel,
    int pctSurface,
    int iCarreauEntier,
    int jCarreauEntier,
    int idCarreauPartielAval,
    int idCarreauxPartielsAmont,
    int idCarreauEntier,
    int pctEau,
    int pctForet,
    int pctMarais,
    int pctSolNu,
    int altitudeMoyenne,
    int profondeurMinimum,
    int longueurCoursEauPrincipal,
    int largeurCoursEauPrincipal,
    int penteRiviere,
    int cumulPctSuperficieCPAmont,
    int cumulPctSuperficieLacsAmont,
    int cumulPctSuperficieMaraisAmont,
    int cumulPctSuperficieForetAmont,
    float superficieCarreauEntier,
    int pctFermetureFutaie,
    float indiceFoliaire,
    float custom_1,
    float custom_2,
    int lat,
    int lon,
    int pctFeuillu,
    int pctConifer,
    double hautMoyenneArbre,
    int azimutCoursEau
) 
```




<hr>



### function altitudeMoyenne 

_Getter altitude moyenne (metres)._ 
```C++
int CarreauPartiel::altitudeMoyenne () const
```




<hr>



### function azimutCoursEau 

_Getter azimutCoursEau._ 
```C++
int CarreauPartiel::azimutCoursEau () const
```




<hr>



### function calculerCorrectionDebit 

```C++
float CarreauPartiel::calculerCorrectionDebit () const
```



Facteur de correction du debit calcule. = cumulPctSuperficieCPAmontCorrige / cumulPctSuperficieCPAmont 


        

<hr>



### function codeCarreauPartiel 

_Getter Code du carreau partiel (A - B - C ou D)._ 
```C++
char CarreauPartiel::codeCarreauPartiel () const
```




<hr>



### function coeffTransfert [1/2]

_Getter Coefficient de transfert pour le pas de temps d'une journee._ 
```C++
double CarreauPartiel::coeffTransfert () const
```




<hr>



### function coeffTransfert [2/2]

_Setter coefficient de transfert pour le pas de temps d'une journee._ 
```C++
void CarreauPartiel::coeffTransfert (
    double valeur
) 
```




<hr>



### function cumulPctSuperficieCPAmont 

```C++
int CarreauPartiel::cumulPctSuperficieCPAmont () const
```



Getter Cumul des pourcentages de superficie des carreaux partiels en amont, calcule à la sortie du carreau partiel considéré. 


        

<hr>



### function cumulPctSuperficieForetAmont 

```C++
int CarreauPartiel::cumulPctSuperficieForetAmont () const
```



Getter Cumul des pourcentages de superficie de foret en amont, calcule a la sortie du carreau partiel considere. 


        

<hr>



### function cumulPctSuperficieLacsAmont 

```C++
int CarreauPartiel::cumulPctSuperficieLacsAmont () const
```



Getter Cumul des pourcentages de superficie des lacs en amont, calcule a la sortie du carreau partiel considere. 


        

<hr>



### function cumulPctSuperficieMaraisAmont 

```C++
int CarreauPartiel::cumulPctSuperficieMaraisAmont () const
```



Getter Cumul des pourcentages de superficie des marais en amont, calcule a la sortie du carreau partiel considere. 


        

<hr>



### function custom\_1 

_Getter Custom\_1._ 
```C++
float CarreauPartiel::custom_1 () const
```




<hr>



### function custom\_2 

_Getter Custom\_2._ 
```C++
float CarreauPartiel::custom_2 () const
```




<hr>



### function hautMoyenneArbre 

_Getter hautMoy._ 
```C++
double CarreauPartiel::hautMoyenneArbre () const
```




<hr>



### function iCarreauEntier 

_Getter Abscisse I du carreau entier auquel appartient le carreau partiel._ 
```C++
int CarreauPartiel::iCarreauEntier () const
```




<hr>



### function id 

_Getter Id du carreau partiel._ 
```C++
int CarreauPartiel::id () const
```




<hr>



### function idCarreauEntier 

_Getter Id du carreau entier auquel il appartient._ 
```C++
int CarreauPartiel::idCarreauEntier () const
```




<hr>



### function idCarreauPartielAval 

_Getter Id du carreau partiel dans lequel il se jette._ 
```C++
int CarreauPartiel::idCarreauPartielAval () const
```




<hr>



### function idCarreauxPartielsAmont 

_Getter Liste des id des cinq carreaux affluents possible._ 
```C++
const int * CarreauPartiel::idCarreauxPartielsAmont () 
```




<hr>



### function indiceFoliaire 

_Getter Indice foliaire._ 
```C++
float CarreauPartiel::indiceFoliaire () const
```




<hr>



### function jCarreauEntier 

_Getter Ordonnée J du carreau entier auquel appartient le carreau partiel._ 
```C++
int CarreauPartiel::jCarreauEntier () const
```




<hr>



### function largeurCoursEauPrincipal 

_Getter Largeur du cours d'eau principal sur la parcelle (1/10 de metres)._ 
```C++
int CarreauPartiel::largeurCoursEauPrincipal () const
```




<hr>



### function latitude 

_Getter latitude._ 
```C++
int CarreauPartiel::latitude () const
```




<hr>



### function longitude 

_Getter longitude._ 
```C++
int CarreauPartiel::longitude () const
```




<hr>



### function longueurCoursEauPrincipal 

_Getter Longueur du cours d'eau principal sur la parcelle (1/10 de km)._ 
```C++
int CarreauPartiel::longueurCoursEauPrincipal () const
```




<hr>



### function pctConifer 

_Getter pctConifer._ 
```C++
int CarreauPartiel::pctConifer () const
```




<hr>



### function pctEau 

_Getter Poucentage d'eau sur le carreau partiel._ 
```C++
float CarreauPartiel::pctEau () const
```




<hr>



### function pctFermetureFutaie 

_Getter Pourcentage fermeture futaie._ 
```C++
int CarreauPartiel::pctFermetureFutaie () const
```




<hr>



### function pctFeuillu 

_Getter pctFeuillu._ 
```C++
int CarreauPartiel::pctFeuillu () const
```




<hr>



### function pctForet 

_Getter Poucentage de foret sur le carreau partiel._ 
```C++
float CarreauPartiel::pctForet () const
```




<hr>



### function pctMarais 

_Getter Poucentage de marais sur le carreau partiel._ 
```C++
float CarreauPartiel::pctMarais () const
```




<hr>



### function pctSolNu 

_Getter Poucentage de sol deboise sur le carreau partiel._ 
```C++
float CarreauPartiel::pctSolNu () const
```




<hr>



### function pctSurface 

_Getter Pourcentage du carreau partiel par rapport au carreau entier (0 a 1)._ 
```C++
float CarreauPartiel::pctSurface () const
```




<hr>



### function penteRiviere 

_Getter Pente de la riviere sur le carreau partiel (1/1000 de metres/km)._ 
```C++
int CarreauPartiel::penteRiviere () const
```




<hr>



### function profondeurMinimum 

_Getter Profondeur minimum (1/100 de metres)._ 
```C++
int CarreauPartiel::profondeurMinimum () const
```




<hr>



### function superficieCPAmontCorrige 

_Setter superficieCPAmontCorrige._ 
```C++
void CarreauPartiel::superficieCPAmontCorrige (
    float valeur
) 
```




<hr>



### function volumeInitial [1/2]

_Getter Volume d'eau initial._ 
```C++
float CarreauPartiel::volumeInitial () const
```




<hr>



### function volumeInitial [2/2]

_Setter Volume d'eau initial._ 
```C++
void CarreauPartiel::volumeInitial (
    float valeur
) 
```




<hr>



### function ~CarreauPartiel 

```C++
CarreauPartiel::~CarreauPartiel () 
```




<hr>

------------------------------
The documentation for this class was generated from the following file `src/CarreauPartiel.h`

