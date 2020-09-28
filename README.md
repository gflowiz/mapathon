![](https://i.imgur.com/1gKUrgY.png)

Ce dépot décrit les données du [**mapathon**](https://cartomob.sciencesconf.org/resource/page/id/14) organisé du 7 au 18 octobre 2020, dans le cadre du colloque international [Tous (im)mobiles, tous cartographes?](https://cartomob.sciencesconf.org/)
 


## Le sujet

**- Le thème** : Le transport aérien en France métropolitaine (1999-2020)

**- Le sujet** : il vous est proposé d’explorer l’évolution spatio-temporelle du transport aérien en France métropolitaine de 1999 à 2020, pour en raconter une histoire illustrée de cartes ou cartographique. 

[Voir le règlement](https://cartomob.sciencesconf.org/resource/page/id/12)


## Les Prix
- Trois prix principaux, classés du premier au troisième prix.
- Un prix spécial du jury pour une réalisation qui correspond particulièrement bien aux thèmes du colloque auquel est associé le Mapathon.
- Un prix spécial du jury pour le _design cartographique_.
- Un prix spécial de l'OSGEO-FR, pour la meilleure utilisation d'outils libres.

## Les données

### Présentation 

Les données décrivent le transport aérien français, selon les trois dimensions suivantes. 

**(1) la thématique** : transport aérien de personnes (flux de passagers) et/ou de marchandises (fret aérien + courrier) et/ou les mouvements d'avions (aux aéroports).

**(2) la géographie** : la localisation élémentaire est la ville aéroportuaire (les flux sont donc inter-villes). Seules les villes présentant un aéroport en activité depuis 2010 sont concernées. Les villes telles que Paris et Lyon notamment, qui présentent plusieurs aéroports, ont vu leurs aéroports fusionnés. L'échelon d'analyse est donc la ville (et non l'aéroport).

**(3) la temporalité** : les données sont soit mensuelles et disponibles sur 10 ans depuis 2010, soit annuelles et disponibles pour 1999, 2004, 2009, 2014 et 2019.

L’analyse cartographique est donc réalisée / réalisable pour le transport de personnes et/ou le fret et courrier et/ou les mouvements d'avion en France métropolitaine, à l'échelle de la ville, en implantation ponctuelle, entre 1999 et 2019, avec une temporalité mensuelle (2010-2019) ou annuelle (1999,2004, 2009, 2014 et 2019).

REMARQUE : Le jury sera sensible à l'exploitation de la composante spatiale des données fournies. 

### Fichiers disponibles

Les fichiers sources des données ont été retravaillés (au final 3 fichiers peuvent être utilisés) :
- un **fichier géographique pour les noeuds / lieux** </br> _villes.csv_ ou _villes.geojson_ : renseigne l'implantation géographique (coordonnées XY) ;
- un **fichier statistique pour les noeuds / lieux** </br> _Eurostats_large.csv_ ou Fichier _Eurostats_long.csv_ : données eurostats 2010-2020 sur les fréquentations (nombre de passagers, de marchandises (fret+courrier) et de mouvements d'avion) par ville et par mois, au format long ou large (les deux fichiers contiennent donc les même données);
- un **fichier statistique de liens pondérés / trafic / flux** </br> Flux _DGAC_flux.csv_ : trafic de passagers et de marchandises entre villes aéroportuaires ; 

REMARQUE : Les données statistiques autres que celles qui précèdent ne sont pas autorisées.
Des données géographiques complémentaires peuvent être utilisées, à des fins d'habillage.

### Métadonnées
Les descriptions des données sont disponibles dans le répertoire /Metadonnées :
- [_Dictionnaire_variables.ods_](https://github.com/gflowiz/mapathon/blob/master/metadonnees/Dictionnaire_variables.ods) : décrit l'ensemble des variables statistiques et leurs modalités.
- [_Dictionnaire_termes.odt_](https://github.com/gflowiz/mapathon/blob/master/metadonnees/Dictionnaire_termes.odt) : décrit les principaux termes du transport aérien français (réalisé d'après la DGAC).


Fichier _villes.csv_ :
|VARIABLE	| DESCRIPTIF |
|--------|--------|
|ville| Nom de la ville
|lat| Latitude
|lng| Longitude

Fichier _villes.csv_ :
|VARIABLE	| DESCRIPTIF |
|--------|--------|
|ville| Nom de la ville

Fichier _DGAC_flux.csv_ :

|VARIABLE	| DESCRIPTIF |
|--------|--------|
|id	|Numéro d'identifiant|
|Annee	|Année de mesure|
|Origine	|Ville d'origine de la liaison|
|Destination	|Ville de destination de la liaison|
|lng_origine	|Longitude du lieu d'origine de la liaison|
|lat_origine	|Latitude du lieu d'origine de la liaison|
|lng_destination	|Longitude du lieu de destination de la liaison|
|lat_destination	|Latitude du lieu de destination de la liaison|
|Dessertes	|Nombre total de dessertes|
|Pax_total	|Nombre total de passagers locaux + en transit des vols commerciaux (sans double compte)|
|Pax_reg	|Nombre total de passagers d'un vol régulier|
|Pax_Non_reg	|Nombre total de passagers d'un vol non régulier|
|Fret_Total	|Nombre total de marchandises d'un vol non régulier|



Fichier _Eurostats_long.csv_ :
|VARIABLE	| DESCRIPTIF |
|--------|--------|
|tra_meas| Type de comptage|
||Modalités :|
||PAS_CRD : Nombre de passagers transportés|
||PAS_TRS : Nombre de passagers en transit direct|
||PAS_TRF : Nombre de passagers transférés|
||FRM_LD_NLD : Quantité de marchandises chargée et déchargée : fret et courrier|
||ACM : Mouvements d’avions  commerciaux et non commerciaux (passagers, fret et courrier)|
||CACM : Mouvements d’avions commerciaux (passagers, fret et courrier)|
|ville | Ville concernée |
|date | Date au format anneeMmois|
|n| Valeur du comptage|
|annee | Année|
|mois |Mois|

Fichier _Eurostats_large.csv_ :
|VARIABLE	| DESCRIPTIF |
|--------|--------|
|ville| Nom de la ville
|tra_meas| Type de comptage|
||Modalités :|
||PAS_CRD : Nombre de passagers transportés|
||PAS_TRS : Nombre de passagers en transit direct|
||PAS_TRF : Nombre de passagers transférés|
||FRM_LD_NLD : Quantité de marchandises chargée et déchargée : fret et courrier|
||ACM : Mouvements d’avions  commerciaux et non commerciaux (passagers, fret et courrier)|
||CACM : Mouvements d’avions commerciaux (passagers, fret et courrier)|
|2010M01| Valeur du comptage en Janvier 2010
|2010M02| Valeur du compage en Février 2010
|...|...|
|2019M10| Valeur du compage en Octobre 2019




Les **sources des données** proposées sont : 
- Direction générale de l'aviation civile (2020), _Bulletin statistique : trafic aérien commercial année 2019_, Ministère de la transition écologique et solidaire [MTES](https://www.ecologie.gouv.fr/)
- Eurostats (2020), [_Transport database_](https://ec.europa.eu/eurostat/web/transport/data/database)



=== </br>
Cet événement est réalisé avec le support des associations [Toulouse Dataviz](http://toulouse-dataviz.fr), [OSGeo.Fr](https://www.osgeo.org/local-chapters/osgeo-fr/) et [AFIGÉO](http://www.afigeo.asso.fr/).</br> 
![](https://i.imgur.com/NZvq8Zl.png) </br>    
Contact : cartomob@sciencesconf.org

