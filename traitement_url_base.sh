#!/usr/bin/env bash
cd /Users/sandrajagodzinska/Desktop/ATAL/programmationEtProjetEncadre/PPE1/exercices/script_validationURL

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on d�crit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les param�tres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus l�ger, il n'y a pas de norme en bash.
# exercice 2 curl -- head url
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entr�e
fichier_tableau=$2 # le fichier HTML en sortie

# !!!!!!
# ici on doit v�rifier que nos deux param�tres existent, sinon on ferme!
# !!!!!!
if [ $# -ne 2 ]			#ne - not euqal
then
	echo "ce programe demande un argument"
		exit
fi

echo "<html>
	<header>
		<meta charset="UTF-8" />
</header>
<body>
	<table>
		<tr><th>ligne</th><th>code</th><th>URL</th></tr>" > $fichier_tableau

while read -r LINE;
do
	code=$(curl --head --silent $LINE | egrep "^HTTP/" | cut -d " " -f 2)
	#n_lines=$(wc -l $fichier_urls)
	if [[ $code -eq 200 ]]
	then
		echo "<tr><th>nombre</th><th>"$code"</th><th>"$LINE"</th></tr>" >> $fichier_tableau
		#do
			#charset=$($header | egrep "charset")
			#how to ajouter au teableau
		#done
	#else
		#echo "non"
	fi
done < $fichier_urls


# modifier la ligne suivante pour cr�er effectivement du HTML


#lineno=1;

#while read -r line;
#do
	#echo "ligne $lineno: $line";
	#lineno=$((lineno+1));
#done < $fichier_urls

