# Journal de bord du projet encadré
##Git I : mise en pratique
Premierement, j'ai créé un dossier plurital sur le desktop de mon ordinateur et j'ai créé un compte sur un site web Github.
Après la mise à jour de mon OS vers MacOS 12, j'ai dû faire face à un bug qui m'empêchait d'utiliser git sur mon mac. Acune des commandes n'a fonctionné. La solution était simple, il fallait installer xcode toolkit. Pour cela j'ai utilisé une commande : xcode-select --install.
Ensuite, j'ai cloné mon dépôt distant vers un dossier plurital sur mon ordinateur, j'ai accedé dans le dossier PPE1 avec une commande "cd <chemin de dossier>" et j'ai vérifié par "git status" si je suis à jour par rapport à mon dépôt distant. 
Ensuite, sur le site web Github j'ai créé un fichier "journal-de-bord.md". 
À ce moment, je n'étais plus à jour avec mon dossier distant. Pour m'en assurer, j'ai utilisé "git status". En response, j'ai obtenu "Your branch is behind origin/main [...]". Pour mettre à jour mon dossier j'ai utilisé "git pull", pour tirer des changements de dépôt distant vers mon ordi. À ce moment, j'étais à jours avec mon dossier distant. Pour être sûr, j'ai utilisé "git status" encore une fois. 
Puis, j'ai utilisé "git log" comme indiqué dans le consigne pour voir mon dernier commit. 
Maintenant, je modifie mon fichier "journal-de-bord". En utilisant "git status", j'ai vérifié que git détecte bien des changements.

## 30.10.2022
Je m'ennuyais beaucoup alors j'ai décidé de nettoyer mes fichiers PPE1. J'ai créé un nouveau fichier exercices. Avec des commandes git add, commit et push j'ai synchronisé mon dossier distant avec celui-ci sur mon ordinateur.
Sincèrement, j'étais bloqué pendent un peu de temps, parce que les commandes pour "revert" un commit ne sont pas faciles à utiliser, car il y a cette distinction entre commit déjà poussé et non-poussé. 
La commande revert nous renvois à la fonction insert du terminal, et par méprise, j'ai divisé mon repository (je ne me souviens plus comment exactement), et je n'ai aucune idée de comment je l'ai corrigé mais après 3 jours de combat je l'ai réussi.

## Git II : mise en pratique 
J'ai créé un tag de version finie de séance 2 il y a longtemps. Après j'étais bloque sur deuxième partie de TD, mais je reviens pour refaire tous pas-à-pas, car la pratique est essentiel pour bien apprendre des choses !
Au début, j’ai ajouté le texte au journal-de-bord, j’ai fait un commit « i am error » et je l’ai poussé. Avec la commande git log je récupère l’identifiant SHA du commit poussé: commit 2e500d13e96d466ada63a44ed1e9730bd060501a.
Ensuite, avec la commande git revert <commit>, où commit est soit un tag soit un id SHA du commit, je défais le commit déjà poussé. 

### remarque important!! 
Avant créé un tag il faut faire des commits et pousser!!

J'ai créé un fichier oups.md dans lequel j'ai fait des choses qui ensuite sont commités. Quand j’ai fini mon travail, je dois retourner vers la version du tag "20221005-init". La commande doit satisfaire les contraintes suivantes : 
-	je ne dois pas perdre les changements
- les changements ne doivent pas être staged après le retour au tag 

Alors j’utilise la commande git reset HEAD~ pour annuler le staging et ne pas perdre les changements. Reset –soft n'annule pas le staging et reset –hard supprime tous les changements que nous avons fait.

À la fin, je fait un tag "version finie séance 3"

## script validation URL
J'ai recopié le script de diapos Shell (mais pas bêtement - j'ai écrit tous à la main en analysant tous les choses - j'ai écrit des commentaires pour m'expliquer des choses pas claires).
Au début, mon script n'a pas marché parce que dans le script j'ai écrit if [[ $LINE =∼ "^https?://" ]], apparament si on recherche les expressions avec le bash il faut pas mettre "". 
J'ai appris comment utiliser command read et ses differents fonctionalités, comment créer une boucle en bash et comment terminer la boucle s'il y a un erreur. 

## HTML
syntaxe : 
<html> 
	<head>...</head>  #l’entête du fichier (avec les métadonnées qui contient beaucoup d’informations, nous allons s'interesser au charset - encodage du texte)
	<body>...</body>  #le corps du fichier (avec le contenu textuel et la structure)
</html>
J'ai créé un premier code html cat_test en copiant et en analysant le code des diapos, ensuite j'ai créé le tableau.
syntaxe tableau :
• table : la balise racine du tableau
• tr : table row
• th : table header, une cellule d’entête (seulement la première ligne) 
• td : table data, une cellule classique (toutes les lignes pas entête) 

## LYNX
###J'ai rencontré des problèmes avec lynx qui n'a pas marché sur mon MacOS. j'ai créé un issue dans le git, mais après j'ai trouvé les commandes brew update et brew link lynx avec lesquelles j'ai résolu ce problème, alors j'ai fermé un issue avec un commentaire.
Q : Une option permet de récupérer le contenu textuel (sans liens) d’une page pour l’afficher à l’écran. Laquelle et comment la chercher ?
- afficher à l'ecran = standard output
- lynx --help | egrep "(standard output|stdout)" => with -dump, format output as with -traversal, but to stdout
- lynx --help | egrep "links" => with -dump, forces it to show only the list of links (off) => je veux le contraire
- lynx --help | egrep "list" => -nolist           disable the link list feature in dumps (off)

alors la commande : lynx -dump -nolist https://pl.wikipedia.org/wiki/Polska

## wget et cURL
ils permettent de récupérer des pages web sans passer par un navigateur. wget écrit dans un fichier et cURL écrit dans le terminal.
HTTP - protocole de communication entre un client et un serveur pour transmettre pages etc.
- 1xx : information
- 200 : réussite
- 3xx : redirections
- 4xx : erreurs du client
- 5xx : erreurs du serveur
interesting curl : curl -iL www.youtube.com => HTTP/1.1 301 Moved Permanently; Content-Type: application/binary

##urls_exercices
exercice 2. pour récupérer que le début de ce que curl retourne il faut utiliser curl --head
exercice 3??
exercice 4. curl --head <url> | egrep "charset"
