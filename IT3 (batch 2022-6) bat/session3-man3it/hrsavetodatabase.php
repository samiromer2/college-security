<?php 
session_start(); 
print_r($_POST);


$ename   = $_POST['ename'];  
$address = $_POST['address'];  
$phone   = $_POST['phone'];
$age     = $_POST['age'];  
$gender  = $_POST['gender'];  

$membername = $_SESSION['membername'];
?>
 <?php
$servername = "localhost";//192.168.2.1
$username = "root";
$password = "oracle";
$dbname = "manment";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection


$sql = "INSERT INTO `hrdata`( `Empname`, `Address`, `phone`, `age`, `gender` ,`membername`) VALUES ('$ename','$address','$phone','$age','$gender','$membername')";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

header('Location: hrform.php?state=allgood');
?> 