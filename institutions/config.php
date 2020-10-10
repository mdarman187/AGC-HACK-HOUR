<?php

$server = "	sql307.epizy.com";
$username = "epiz_26938135";
$password = "4GUtdCnckpx";
$dbname = "epiz_26938135_institutions";

$conn = mysqli_connect($server,$username,$password,$dbname);

if($conn){
    die("Connection Failed:".mysqli_connect_error());
}

?>
