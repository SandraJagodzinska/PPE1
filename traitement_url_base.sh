#!/usr/bin/env bash
cd /Users/sandrajagodzinska/Desktop/ATAL/programmationEtProjetEncadre/PPE1/exercices/script_validationURL

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
# exercice 2 curl -- head url
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie

# !!!!!!
# ici on doit vérifier que nos deux paramètres existent, sinon on ferme!
# !!!!!!
if [ $# -ne 1 ]			#ne - not euqal
then
	echo "ce programe demande un argument"
		exit
fi

while read -r LINE;
do
	header=$(curl --head $LINE)
	if [[ $header =~ ^HTTPS? ]]
	then
		echo "valide"
	else
		echo "non"
	fi
done < $fichier_urls

# modifier la ligne suivante pour créer effectivement du HTML
#echo "Je dois devenir du code HTML à partir de la question 3" > $fichier_tableau

#lineno=1;

#while read -r line;
#do
	#echo "ligne $lineno: $line";
	#lineno=$((lineno+1));
#done < $fichier_urls
