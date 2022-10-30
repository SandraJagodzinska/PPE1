#!/bin/bash
cd /Users/sandrajagodzinska/Desktop/ATAL/programmationEtProjetEncadre/PPE/Fichiers

# traitement de l'année 2016, on créé on écrase le fichiers sortie.txt
echo "pour l'année 2016" > sortie.txt
egrep "Location" 2016*.ann | wc -l >> sortie.txt
# traitement de l'année 2017, on écrit à la suite du fichier
echo "pour l'année 2017" >> sortie.txt
egrep "Location" 2017*.ann | wc -l >> sortie.txt
# traitement de l'année 2018, on écrit è la suite du fichier
echo "pour l'année 2018" >> sortie.txt
egrep "Location" 2018*.ann | wc -l >> sortie.txt