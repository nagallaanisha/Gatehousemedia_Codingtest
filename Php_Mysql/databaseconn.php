<?php
require "conn.php";

$name = $_POST['name'];
$phone = $_POST['phone'];
$email= $_POST['email'];

$sql1 = "INSERT INTO userdata_table(name,phonenumber) VALUES('$name','$phone')";

if(mysqli_query($conn,$sql1)){
    $last_id = mysqli_insert_id($conn);
    echo " Form submitted Successfully";
} else{
    echo "Data is not submitted";
}
$sql= "INSERT INTO useremail_table(id,email) VALUES ('$last_id','$email')";
if(mysqli_query($conn,$sql)){
  //echo " email is successfully submited";
} else{
   // echo "email is not submitted";
}

mysqli_close($conn);
?>