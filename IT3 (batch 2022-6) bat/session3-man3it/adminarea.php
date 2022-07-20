<?php 
session_start(); 
//echo $_SESSION['membername']; 
//print_r($_SESSION);
if ($_SESSION['adminornot'] == 'admin')
	echo " ";
else 
	header('Location: login.php');
	?>
		
<?php 
$servername = "localhost";
$username = "root";
$password = "oracle";
$dbname = "manment";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT `id`, `Empname`, `Address`, `phone`, `age`, `gender`, `whendata`, `membername` FROM `hrdata` ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
 echo "<table border='1'>";
 echo "<tr><td>Emp name</td><td> who added him</td></tr>";
  // output data of each row
  while($row = $result->fetch_assoc()) {
  echo "<tr>";
      //print_r($row);
	  $id = $row['id'];
	  $Empname = $row['Empname'];
	  $Address = $row['Address'];
	  $phone = $row['phone'];
	  $age = $row['age'];
	  $gender = $row['gender'];
	  $whendata = $row['whendata'];
	  $membername = $row['membername'];
	  
	  echo "<td>$Empname</td><td>$membername</td>";
	  echo "</tr>";
	  }
	  echo "</table>";
} else {
  echo "<font color = 'red'>wrong username or password</font>";
}
?>
