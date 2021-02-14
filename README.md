# Groupe
Solignac Julia Anne  
Germain Morgan  
Lugol Jérémie  
Therasse Yohan  
Wafi Khalil

# Fonctionnement
Mettre fichier sh et csv à la racine du dossier Kafka.

# Topics
## Pre-Z
Partitionnement : 350 partitions, correspond au nombre d'asils  
Réplications : 2 réplications, données importantes et volumineuses  
Temps de rétention : 1 heure, le traitement ne devrait pas être plus long
## Ville-stats
Partitionnement : 18 partitions, correspond au nombre de régions. Amène à une moyenne de moins de 2000 villes par partition.  
Réplications : 2 réplications, données importantes et volumineuses  
Temps de rétention : 1 heure, le traitement ne devrait pas être plus long
## Regions-stats
Partitionnement : 18 partitions, correspond au nombre de régions. Amène à une moyenne de moins de 2000 villes par partition.  
Réplications : 3, la stat est primordiale car elle donne une vision d'ensemble de la propagation, nous choisissons donc une réplication plus importante.  
Temps de rétention : 1 heure
## Zombie
Partitionnement : 100 partitions, corresponds au nombre maximum de zombies pouvant sortir d'un asile. (Une autre solution envisagée était de faire 350 partitions afin d'avoir une partition par sortie d'asile)  
Réplications : 2  
Temps de rétention : 1 heure
## Budget-Region
Partitionnement : 18 partitions, il y a 18 régions et donc 18 budgets y étant liés.  
Réplications : 2  
Temps de rétention : 1 heure
## Imune
Partitionnement : Même raisonnement que pour Zombie, deux solutions envisagées : 100 ou 350 partitions  
Réplications : 2  
Temps de rétention : 1 heure
## Asil-stats
Partitionnement : 350 partitions, correspond au nombre d'asiles  
Réplications : 2  
Temps de rétention : 1 heure
## Prog-antwitter
Partitionnement : 100 partitions, correspond au nombre maximum de zombies sortant d'un asile et pouvant être consommés par l'institut Pastiche. Là aussi 350 partitions sont envisageables.  
Réplications : 2  
Temps de rétention : 1 heure
## Francie-stats
Partitionnement : 1 seule partition, pas de raison d'en faire plus.  
Réplications : 2  
Temps de rétention : 1 heure
