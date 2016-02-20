<?php
$Language = 'en';
if(isset($_SERVER['HTTP_ACCEPT_LANGUAGE'])){
  $Langue = explode(",",$_SERVER['HTTP_ACCEPT_LANGUAGE']);
  $Language = strtolower(substr(chop($Langue[0]),0,2)); }
if($Language == 'fr'){
$text0="ACC&Egrave;S REFUS&Eacute;"	;
$text1="L'acc&egrave;s &agrave; au domaine :";
$text2="... a &eacute;t&eacute; refus&eacute; pour la(les) raison(s) suivante(s) :";
$text3="Vous tentez d'acc&eacute;der &agrave; une ressource dont le contenu est r&eacute;put&eacute;
	contenir des informations inappropri&eacute;es.";
$text4="Contactez votre responsable informatique (RSSI/OSSI), si vous pensez que ce filtrage est abusif.";
$text5="Filtr&eacute; par ";
}
else {
$text0="Access has been Denied!";	
$text1="Access to the page:";
$text2="... has been denied for the following reason:";
$text3="You are seeing this error because what you attempted to access appears to contain,
	or is labeled as containing, material that has been deemed inapproriate.";
$text4="If you have any queries contact your ICT Co-ordinator or Network Manager.";
$text5="Filtered by ";	
}
?>
<html>

<head>
<title>Dnsmasq - Access Denied</title>
</head>

<body bgcolor=#FFFFFF>

<center>
<table border=0 cellspacing=0 cellpadding=2 height=540 width=700>
<tr>
	<td colspan=2 bgcolor=#FEA700 height=100 align=center>
	<font face=arial,helvetica size=6>
	<b><?php echo ($text0);?></b>
	</td>
</tr>
<tr>
	<td colspan=2 bgcolor=#FFFACD height=30 align=right>
	<font face=arial,helvetica size=3 color=black>
	<b>-CTparental-&nbsp;</b>
	</td>
</tr>
<tr>
	<td align=center valign=bottom width=150 bgcolor=#B0C4DE>
	<font face=arial,helvetica size=1 color=black>
	<img src="images/Tux.png" />
	</td>
	<td width=550 bgcolor=#FFFFFF align=center valign=center>
	<font face=arial,helvetica color=black>
	<font size=4>
	<?php echo ($text1);?>
	<br><br>
	<?php
		echo ( $_SERVER["HTTP_HOST"] );
	?>
	<br><br>
	<font size=3>
	<?php echo ($text2);?>
	<br><br>
	<font color=red>
	<b>
	<?php

exec ("/usr/local/bin/CTparental-bl-infos.sh ".$_SERVER["HTTP_HOST"],$blinfosliste);
$var1=$blinfosliste[0];
$tab1=explode(" ",$var1);
foreach ($tab1 as $categorie )
			{
				echo "<a href='http://127.0.0.1/CTparental/bl_categories_help.php?cat=$categorie' title='categories help page'>$categorie</a><br>";
			}

?>
</b>
	<font color=black>
	<br><br><br><br>
	<?php echo ($text3);?>
	<br><br>
	<?php echo ($text4);?>
	<br><br><br><br>
	<font size=1>
	<?php echo ($text5);?> <B>Dnsmasq</B></a>
	</td>
</tr>
</table>

</body>

</html>


