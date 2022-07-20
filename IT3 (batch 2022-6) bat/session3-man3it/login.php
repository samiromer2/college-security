<?php 
session_start();
	if (isset($_POST['butsub']))
		{		 
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

$username = $_POST['username']; 
$password = $_POST['password'];
$sql = "SELECT `id`,adminornot, `membername`, `memberpass` FROM `members` WHERE `membername` = '$username' and `memberpass` = '$password'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
$_SESSION['membername'] = $username;
 
  // output data of each row
  while($row = $result->fetch_assoc()) {
    //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	$_SESSION['adminornot'] =$row['adminornot'];
	echo "there is ";
	if ($_SESSION['adminornot'] == 'admin')
		{
			header('Location: adminarea.php');
			die();
		}
	else	
		{
			header('Location: hrform.php');
			die();
		}
  }
} else {
  echo "<font color = 'red'>wrong username or password</font>";
}

		}
?>
<form method = "POST" action = "login.php">
<table>
<tr>
<td>user name</td>
<td><input name = "username"></td>
</tr>
<tr>
<td>password</td>
<td><input name = "password"></td>
</tr>
<tr>
<td></td>
<td><input name = "butsub" type = "submit" value = "Login"></td>
</tr>
</form>