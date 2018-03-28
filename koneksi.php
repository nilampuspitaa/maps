<?php 
$SERVER="localhost";
$username="root";
$password="";
$database="mapspace";

$conn=mysqli_connect($SERVER,$username,$password);
mysqli_select_db($conn,$database);
 ?>