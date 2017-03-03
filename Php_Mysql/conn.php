<?php
$servername="localhost";
$username="root";
$password="";
$dbname="formsubmitdb";

//create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

//check connection
if($conn){
	//echo "connection success";
} else{
	echo "connection unsuccessful";
}
?>