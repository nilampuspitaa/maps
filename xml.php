	
<?php
 
mysql_connect("localhost", "root", "") or die(mysql_error());
mysql_select_db("test") or die(mysql_error());
$query = "SELECT * FROM markers";
$result = mysql_query($query) or die(mysql_error());
 
$doc = new DomDocument('1.0');
$node = $doc->createElement("markers");
$parnode = $doc->appendChild($node);
 
header("Content-type: text/xml");
 
while($row = mysql_fetch_array($result))
{
$node = $doc->createElement("marker");
$newnode = $parnode->appendChild($node);
$newnode->setAttribute("name", $row['name']);
$newnode->setAttribute("address", $row['address']);
}
 
print $doc->saveXML();
 
?>