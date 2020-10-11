<?php

// just simple connecting with localhost 

$connect= new mysqli("server","username","password","database name");
if($connect){

}else{

	echo "Connection Failed";
	exit();

}

?>
