<?php 
session_start(); 
print_r($_SESSION);
echo $_SESSION['username'];
if ($_SESSION['usertype'] != "admin")
	{
	header("Location: login.php");
	die();
	}
echo "hi admin";
 
$servername = "localhost";
$username = "root";
$password = "oracle";
$dbname = "accounting3itb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT `id`, `Account Name`, `Account Amount`, `Account Movement`, `Account Date`, `membername`, `dateofaction` FROM `accounts` WHERE 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
   //print_r($row);
   echo $row['membername'];
   echo " ";   
   echo $row['dateofaction']; 
   echo "<br>";

   }
} else {
  echo "0 results";
}
?>