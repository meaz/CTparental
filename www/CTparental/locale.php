<?php
// on détecte la langue system
$LANG=getenv('LANG'); 
if(isset($LANG)) {
$tab=explode(".",getenv('LANG'));
$domain="ctparental";

// set the locale into the instance of gettext 
setlocale(LC_ALL,$LANG); // change by language, directory name fr_FR, not fr_FR.UTF-8 

// Spécifie la localisation des tables de traduction
// ce qui donne pour une variable $LANG='fr_FR.UTF-8' une répertoir ci dessous.
// ./locale/fr_FR/LC_MESSAGES/
bindtextdomain($domain, "/usr/share/locale");

// Choisit le domaine
// ce qui nous donne un nom de fichier pour $LANG='fr_FR.UTF-8' de fr.mo
textdomain($domain);
// La traduction est cherché dans ./locale/fr_FR/LC_MESSAGES/fr.mo
}
?>
