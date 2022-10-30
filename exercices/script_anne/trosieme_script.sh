#!/bin/bash
cd /Users/sandrajagodzinska/Desktop/ATAL/programmationEtProjetEncadre/PPE/Fichiers

ANNEE=$1
MOIS=$2
TYPE=$3

echo "pour l'année et le mois $ANNEE_$MOIS" > sortie.txt
egrep "$TYPE" $ANNEE_$MOIS*.ann | wc -l  >> sortie.txt
