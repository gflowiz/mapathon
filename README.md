# mapathon
Ce dépot décrit les données du [**mapathon**](https://cartomob.sciencesconf.org/resource/page/id/14) organisé du 7 au 18 octobre 2020, dans le cadre du colloque international [Tous (im)mobiles, tous cartographes?](https://cartomob.sciencesconf.org/)
 
![](https://i.imgur.com/1gKUrgY.png)

## Le sujet

**- Le thème** : Le transport aérien en France métropolitaine (1999-2020)

**- Le sujet** : il vous est proposé d’explorer l’évolution spatio-temporelle du transport aérien en France de 1999 à 2020. 

**- L'objectif principal** : raconter une histoire (illustrée) en exploitant les trois dimensions suivantes des données décrivant le transport aérien français : 

**- 1) la thématique** : transport aérien de personnes (flux de passagers) et/ou de marchandises (fret aérien + poste) et/ou les mouvements d'avions (aux aéroports).

**- 2) la géographie** : la localisation élémentaire est la ville aéroportuaire (les flux sont donc inter-villes). Seules les villes présentant un aéroport en activité depuis 2010 sont concernées. Les villes telles que Paris et Lyon notamment, qui présentent plusieurs aéroports, ont vu leurs aéroports fusionnés. L'échelon d'analyse est donc la ville (et non l'aéroport).

**- 3) la temporalité** : les données sont soit mensuelles et disponibles sur 10 ans depuis 2010, soit annuelles et disponibles pour 1999, 2004, 2009, 2014 et 2019.

L’analyse est réalisée / réalisable à l’échelle nationale métropolitaine, au niveau de la ville, en implantation ponctuelle, entre 1999 et 2019.

## Les données

Les fichiers sources des données ont été retravaillés (au final 3 fichiers peuvent être à utiliser):
- un **fichier géographique pour les noeuds / lieux** </br> _villes.csv_ ou _villes.geojson_ : renseigne l'implantation géographique (coordonnées XY) ;
- un **fichier statistique de liens pondérés / trafic / flux ** </br> Flux _DGAC_flux.csv_ : trafic de passagers et de marchandises entre villes aéroportuaires ; 
- un **fichier statistique pour les noeuds / lieux** </br> _Eurostats_large_clean.csv_ ou _Eurostats_long_clean.csv_ : données eurostats 2010-2020 sur les fréquentations (nombre de passagers, de marchandises (fret+courrier) et de mouvements d'avion) par ville et par mois, au format long ou large.

REMARQUE : Les données statistiques autres que celles qui précèdent ne sont pas autorisées.
Des données géographiques complémentaires peuvent être utilisées, à des fins d'habillage.

Les **métadonnées** associées aux fichiers de données sont disponibles dans le répertoire /Metadonnées :
- _Dictionnaire_variables.ods_ : décrit l'ensemble des variables statistiques et leurs modalités.
- _Dictionnaire_termes.odt_ : décrit les principaux termes du transport aérien français (réalisé d'après la DGAC).

Les **sources des données** proposées sont : 
- Direction générale de l'aviation civile (2020), _Bulletin statistique : trafic aérien commercial année 2019_, Ministère de la transition écologique et solidaire [MTES](https://www.ecologie.gouv.fr/)
- Eurostats (2020), [_Transport database_](https://ec.europa.eu/eurostat/web/transport/data/database)

## Les Prix
- Trois prix principaux, classés du premier au troisième prix.
- Un prix spécial du jury pour une réalisation qui correspond particulièrement bien aux thèmes du colloque auquel est associé le Mapathon.
- Un prix spécial du jury pour le _design cartographique.
- Un prix de l'OSGEO-FR, pour la meilleure utilisation d'outils libres.

=== </br>
Cet événement est réalisé avec le support des associations [Toulouse Dataviz](http://toulouse-dataviz.fr), [OSGeo.Fr](https://www.osgeo.org/local-chapters/osgeo-fr/) et [AFIGÉO](http://www.afigeo.asso.fr/).</br> 
![](https://i.imgur.com/NZvq8Zl.png) </br>    
Contact : cartomob@sciencesconf.org

