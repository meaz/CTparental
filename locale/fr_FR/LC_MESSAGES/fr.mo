��    Z      �     �      �  D   �  8   �  "   7     Z     x  %   �  >   �  2   �  #   .	  ?   R	  5   �	     �	  �   �	  $   j
  L   �
  "   �
  �   �
  A   �  m   >  ,   �  ?   �      8   7  M   p    �  0   �  F        K  8   c     �     �  )   �     �     �        /   /     _  *   v  +   �  -   �  +   �  #   '  N   K     �  '   �     �  	   �  '   �  +        >  9   G  7   �  3   �  7   �     %  +   )  *   U  !   �  !   �     �  0   �       -     .   A     p     s  :   x     �     �     �  +        3     :     R  '   r     �  1   �     �     �     �     �  <        >     E     Z  !   c     �     �  	   �    �  b   �  ,     0   D  %   u  )   �  7   �  G   �  H   E  *   �  R   �  /     !   <  �   ^  3     V   L  &   �  2  �  L   �  �   J  1   �  W     H  Z  E   �   ]   �   >  G!  >   �"  L   �"     #  9   ,#  "   f#     �#  7   �#     �#  /   �#  A   $  >   G$  &   �$  6   �$  8   �$  ;   %  /   Y%  '   �%  n   �%      &  2   7&     j&     v&  9   �&  8   �&      '  A   '  ,   O'  7   |'  G   �'     �'  ,   (  0   /(  #   `(  #   �(     �(  :   �(     )  +   )  6   1)     h)     k)  L   p)     �)  '   �)  1   �)  5   +*     a*  !   j*  )   �*  1   �*      �*  +   	+     5+     =+     C+     F+  D   M+     �+     �+     �+  ;   �+     �+     �+     ,                     %   F       V   /          ;       +       	   X   6   $   N   "   &       -              3   T              9       Y   :       '   ?                      !       C   D                         4          J       @   0             K       I                 >          *      Z   
      .       =   1   H      U   (       7      G   M   W       5      R   #   P                 B   8   A   <             Q      S                  2   L      O       ,   E   )    	=> Add / delete users in the ctoff group based on the config file , 	=> Add remove Users added in sytem on the config file , 	=> Disable default rules privoxy. 	=> Disable parental controls 	=> Disable privileged group. 	=> Disable rules of custom firewall. 	=> Disable the automatic update of the blacklist of Toulouse. 	=> Disable the login time restrictions for users. 	=> Disable the superuser of grub2. 	=> Enable and configure the login time restrictions for users. 	=> Enable default rules privoxy. (default is Enable) 	=> Enable parental control 	=> Enable privileged group.
	   exemples:
	           CTparental -gctulist
	           Comment all users that you want to filter in  	=> Enable rules of custom firewall. 	=> Enable the automatic update of the blacklist of Toulouse (every 7 days). 	=> Enable the superuser of grub2. 	=> Install parental controls on the computer (desktop PC). Can be used with
	   an additional parameter to specify a source path for the redirection page.
	   example: CTparental -dirhtml -i /home/toto/html/
	   if no option a page by default is used. 	=> Resets the default active categories and blacklist filtering. 	=> Set the filter mode by whitelist or blacklist (default)
	   and the categories that you want to activate. 	=> What to do after each change of the file 	=> as -dl but only if there is no update for more than 7 days. 	=> if placed after -i or -u allows not install / uninstall the dependencies useful if
	   we prefer to install them by hand, or for the postinst and prerm script of deb.
	   examples:
	   CTparental -i -nodep
	   CTparental -dirhtml -i /home/toto/html/ -nodep
	   CTparental -u -nodep 	=> uninstall the Parental Control Computer (desktop PC) 	=> updates parental control from the blacklist of the University of Toulouse 	=> updates the redirect page from a source directory or default.
	   examples:
	           - With a source directory: CTparental -uhtml -dirhtml /home/toto/html/
	           - Default: CTparental -uhtml
	   also lets you change the login couple password of the web interface. 	=> used only for the postinst and prerm script. #the domain filtering is handled by dnsmasq, do not touch this file !! - 5 characters minimum: - 8 characters total, 1 Uppercase, lowercase 1, number 1 - Only letters or numbers. : Application whitelisting (restored area): Bad syntax: Choice of filtered categories. Choice of unfiltered categories. Confirm your password and press OK to continue. Enter Q to Quit Setup. Enter any other choice to change settings. Enter login to the administration interface Enter your password and press OK to continue. Enter: S to continue with these parameters. Error launching of lighttpd Service Install a packet was detected please use this command to uninstall ctparental. Internet surfing cut in It root of the need to run this script. Login Logout in No known package manager, was detected. No known session manager has been detected. Password Password is not complex enough, it must contain at least: The connection to the server of Toulouse is impossible. The password entered is not identical to the first. The start time must be strictly less than the end time: Use Waiting to Connect to Server from Toulouse: Want to filter by, Blacklist or Whitelist: X must take a value between 1 and You want to enable this category: Your surf time as expird! all users of the system undergo the filtering !! and and one special character among the following archive extraction error , interrupted process at at : blacklist and WhiteList , migration process. Please wait : connection established: continue to press a button: error recovery network settings error when downloading, interrupted process friday invalid directory path! is allowed to connect 7/7 24/24 is allowed to connect X minutes per day is allowed to connect the is allowed to surf the Internet X minutes per day minutes monday or saturday so it is impossible to activate the time control connections sunday then run the command thursday to add custom rules edit the file tuesday unknown argument wednesday Project-Id-Version: 
POT-Creation-Date: 
PO-Revision-Date: 
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.8.7.1
Last-Translator: 
Plural-Forms: nplurals=2; plural=(n > 1);
Language: fr
 	=> Ajoute/Supprime les utilisateurs dans le group ctoff en fonction du fichier de configuration , 	=> Mais a jour le fichier de configuration, 	=> Désactiver les règles privoxy par défaut. 	=> Désactiver le contrôle parental 	=> supprime le groupe de privilégiés . 	=> Désactive les règles de pare-feu personnalisées. 	=> désactive la mise à jour automatique de la blacklist de Toulouse. 	=> Désactive les restrictions horaires de login pour les utilisateurs. 	=> Désactiver l'administrateur de grub2. 	=> Active et paramètre les restrictions horaires de login pour les utilisateurs. 	=> Activer les règles par défaut de privoxy. 	=> Activer le contrôle parental 	=> crée un groupe de privilégiés ne subissant pas le filtrage.
	   exemples:
	           CTparental -gctulist
	           commenter tous les utilisateurs que l'on veut filtrer dans  	=> Active les règles de pare-feu personnalisées. 	=> active la mise à jour automatique de la blacklist de Toulouse (tous les 7 jours). 	=> Activer l'administrateur de grub2. 	=> Installe le contrôle parental sur l'ordinateur (pc de bureau). Peut être utilisé avec
	    un paramètre supplémentaire pour indiquer un chemin de sources pour la page web de redirection.
	    exemple : CTparental -i -dirhtml /home/toto/html/
	    si pas d'option la page par défaut est utilisée. 	=> Remet les catégories actives par défaut et le filtrage par blackliste. 	=> Configure le mode de filtrage par liste blanche ou par liste noire (défaut)
	   ainsi que les catégories que l'on veut activer. 	=> A faire après chaque modification du fichier 	=> comme -dl mais seulement si il n'y a pas eu de mise à jour depuis plus de 7 jours. 	=> si placé aprés -i ou -u permet de ne pas installer/désinstaller les dépendances, utiles si
	   on préfère les installer à la main , ou pour le script de postinst et prerm du deb.
	   exemples:
	           CTparental -i -nodep
	           CTparental -i -dirhtml /home/toto/html/ -nodep
	           CTparental -u -nodep 	=> désinstalle le contrôle parental de l'ordinateur (pc de bureau) 	=> met à jour le contrôle parental à partir de la blackliste de l'université de Toulouse 	=> met à jour la page de redirection à partir d'un répertoire source ou par défaut.
	   exemples:
	           - avec un répertoire source : CTparental -uhtml -dirhtml /home/toto/html/
	           - par défaut : CTparental -uhtml
	   permet aussi de changer le couple identifiant,mot de passe de l'interface web. 	=> utilisé uniquement pour les scripts de postinst et prerm. #le filtrage de domaines est géré par dnsmasq, ne pas toucher ce fichier!! - 5 caractères minimum : - 8 caractères au total,1 Majuscule,1 minuscule,1 nombre - que des lettres ou des chiffres. h Application de la liste blanche (domaine réhabilité): Mauvaise syntaxe: Choisir les catégories filtrées à appliquer. Choisir les catégories qui ne serons pas filtrées à appliquer. Confirmez votre mot de passe et validez par Ok pour continuer. Entrer : Q pour Quiter l'installation. Entrez tout autre choix pour modifier les paramètres. Entrer l'identifiant  pour l'interface d'administration  Entrez votre mot de passe et validez par Ok pour continuer. Entrer : S pour continuer avec ces paramètres. Erreur au lancement du service lighttpd Une installation par paquet a été détectée veuillez utiliser cette commande pour désinstaller ctparental. Cupure d'internet dans Il vous faut des droits root pour lancer ce script identifiant Fermeture session dans Aucun gestionnaire de paquet connu , n'a été détecté. Aucun gestionnaire de session connu n'a été détecté. Mot de passe Mot de passe n'est pas assez complexe, il doit contenir au moins: connexion au serveur de Toulouse impossible. Le mot de passe rentré n'est pas identique au premier. L'heure de début doit être strictement inférieure à l'heure de fin: Usage attente de connexion au serveur de Toulouse: Voulez-vous filtrer par Blacklist ou Whitelist : X doit prendre un valeur entre 1 et Voulez vous activer la catégorie : Votre temps de surf a expiré! tous les utilisateurs du système subissent le filtrages!! et et 1 caractère spécial parmi les suivants erreur d'extraction de l'archive, processus interrompu à de : Migration de la Blacklist et de la whitelist de Toulouse.Veuillez patienter. connexion établie: pour continuer appuyez sur une touche : erreur de récupération des paramètres réseaux erreur lors du téléchargement, processus interrompu vendredi Chemin de répertoire non valide! est autorisé à se connecter 7j/7 24h/24 est autorisé à se connecter X minutes par jours est autorisé à se connecter le est autorisé à surfer X minutes par jours minutes lundi ou samedi il est donc impossible d'activer le contrôle horaire des connexions dimanche puis relancez la commande jeudi pour ajouter des règles personnalisées éditez le fichier mardi Argument inconnu mercredi 