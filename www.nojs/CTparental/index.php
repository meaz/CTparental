<?php
include 'locale.php';
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
	<b><?php echo gettext("Access has been Denied!");?></b>
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
	<?php echo gettext("Access to the page:");?>
	<br><br>
	<?php
		echo ( $_SERVER["HTTP_HOST"] );
	?>
	<br><br>
	<font size=3>
	<?php echo gettext("... has been denied for the following reason:");?>
	<br><br>
	<font color=red>
	<b>
	<?php

exec ("/usr/bin/CTparental-bl-infos ".$_SERVER["HTTP_HOST"],$blinfosliste);

foreach ($blinfosliste as $categorie )
			{
				echo "<a href='http://127.0.0.1/CTparental/bl_categories_help.php?cat=$categorie' title='categories help page'>$categorie</a><br>";
			}

?>
</b>
	<font color=black>
	<br><br><br><br>
	<?php echo gettext("You are seeing this error because what you attempted to access appears to contain,");
	echo "<br>		".gettext("or is labeled as containing, material that has been deemed inapproriate.");?>
	<br><br>
	<?php echo gettext("If you have any queries contact your ICT Co-ordinator or Network Manager.");?>
	<br><br><br><br>
	<font size=1>
	<?php echo gettext("Filtered by ");?> <B><a href="http://www.thekelleys.org.uk/dnsmasq/doc.html" target="_blank">Dnsmasq</a></B></a>
	</td>
</tr>
</table>

</body>

</html>


