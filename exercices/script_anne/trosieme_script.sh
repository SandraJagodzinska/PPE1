#!/bin/bash
cd /Users/sandrajagodzinska/Desktop/ATAL/programmationEtProjetEncadre/PPE/Fichiers

##• créer un script pour établir le classement des lieux les plus cités.
##• prendre en argument l’année, le mois et le nombre de lieux à afficher 
##• accepter * pour l’année et le mois.

ANNEE=$1
MOIS=$2
TYPE=$3

echo "pour l'année et le mois $ANNEE $MOIS" > classement_de_lieux_$1_$2.txt
egrep "$TYPE [[:digit:]]" $1_$2*.ann | sort -nr | uniq -c  >> classement.txt

#sort -n trie par nombres -r reverts de plus grand au le plus petit
