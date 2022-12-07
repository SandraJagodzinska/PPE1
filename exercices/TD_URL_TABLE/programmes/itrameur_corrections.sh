#!/usr/bin/env bash

#corection iTrammeur
#attention ce script doit etre lance depuis la racine du projet cela lui permet de recuperer les fichiers dans les bons dossiers. 
# se lancera donc comme ca
# $ ./programmes/itrameur_correction.sh


if [[$# -ne 2]]
then 
	echo "deux arguments attendues: <dossier> <langue>"
	exit
fi

folder=$1 #dump-text ou contextes
basename=$2 #langue qu'on etudie p.ex trus polonais

echo "<lang=\ "$basename\ ">" > "itraumeru/$folder-$basename.txt" #nom de langue etudie

for filepath in $(ls $folder/$basename-*.txt)
do
	#filepath == dumps_text/fr-1.txt
	pagename=$(basename -s .txt $filepath) #suffix extension txt
	echo "<page=\ "$pagename\ ">". #nom de dumps
	echo "<text>"
	
	#on recupere les dumps / contextes
	#et on /crit a linterieyr de la balise text
	content=$(cat $filepath)
	#ordre importe : & en premier sinon : < => &alt; => &amp ; lt
	content=$(echo "$content" | sed 's/&/&amp/g') 
	content=$(echo "$content" | sed 's/</&alt/g')
	content=$(echo "$content" | sed 's/>/&gt/g')
	#s pour substitue g pour globalement premier group ce quon recherche duxieme group ce qon substitue
	
	echo "$content" >> "itrameur/$folder-$basename.txt"
	
	echo "</text>" >> "itrameur/$folder-$basename.txt"
	echo "</page> §" >> "itraumer/$folder-$basename.txt"
done

echo "</lang>" >> "itrameur/$folder-$basename.txt"