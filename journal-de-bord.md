# Journal de bord du projet encadré
##Git I : mise en pratique
Premierement, j'ai créé un dossier plurital sur le desktop de mon ordinateur et j'ai créé un compte sur un site web Github.
Après la mise à jour de mon OS vers MacOS 12, j'ai dû faire face à un bug qui m'empêchait d'utiliser git sur mon mac. Acune des commandes n'a fonctionné. La solution était simple, il fallait installer xcode toolkit. Pour cela j'ai utilisé une commande : xcode-select --install.
Ensuite, j'ai cloné mon dépôt distant vers un dossier plurital sur mon ordinateur, j'ai accedé dans le dossier PPE1 avec une commande "cd <chemin de dossier>" et j'ai vérifié par "git status" si je suis à jour par rapport à mon dépôt distant. 
Ensuite, sur le site web Github j'ai créé un fichier "journal-de-bord.md". 
À ce moment, je n'étais plus à jour avec mon dossier distant. Pour m'en assurer, j'ai utilisé "git status". En response, j'ai obtenu "Your branch is behind origin/main [...]". Pour mettre à jour mon dossier j'ai utilisé "git pull", pour tirer des changements de dépôt distant vers mon ordi. À ce moment, j'étais à jours avec mon dossier distant. Pour être sûr, j'ai utilisé "git status" encore une fois. 
Puis, j'ai utilisé "git log" comme indiqué dans le consigne pour voir mon dernier commit. 
Maintenant, je modifie mon fichier "journal-de-bord". En utilisant "git status", j'ai vérifié que git détecte bien des changements.

##30.10.2022
Je m'ennuyais beaucoup alors j'ai décidé de nettoyer mes fichiers PPE1. J'ai créé un nouveau fichier exercices. Avec des commandes git add, commit et push j'ai synchronisé mon dossier distant avec celui-ci sur mon ordinateur.
Sincèrement, j'étais bloqué pendent un peu de temps, parce que les commandes pour "revert" un commit ne sont pas faciles à utiliser, car il y a cette distinction entre commit déjà poussé et non-poussé. 
La commande revert nous renvois à la fonction insert du terminal, et par méprise, j'ai divisé mon repository (je ne me souviens plus comment exactement), et je n'ai aucune idée de comment je l'ai corrigé mais après 3 jours de combat je l'ai réussi.

## Git II : mise en pratique 
J'ai créé un tag de version finie de séance 2 il y a longtemps. Après j'étais bloque sur deuxième partie de TD, mais je reviens pour refaire tous pas-à-pas, car la pratique est essentiel pour bien apprendre des choses !
