<?php 
session_start(); 
if (isset($_POST['butlogin']))
	{
	//print_r($_POST);
	  $fusername = $_POST['fusername']; 
	  $formpassword = $_POST['formpassword']; 
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

$sql = "SELECT `membertype` FROM `members` 
WHERE membername = '$fusername' and memberpass='$formpassword' ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

while($row = $result->fetch_assoc()) {
    $_SESSION["username"]=$fusername ;
	$_SESSION["usertype"]=$row['membertype']; 	
	if ($row['membertype'] =='admin')
	{
	header("Location: adminarea.php");
	die();
	}	
	if ($row['membertype'] == 'account')
	{
	header("Location: formaccounts.php");
	die();
	}
  }
  
  
} else {
  echo "Sorry wrong username or password";
}
$conn->close();

	}
?>
<form action = "login.php" method = "POST">
<table>
<tr>
<td>User Name</td> 
<td><input name = "fusername"></td>
</tr>
<tr>
<td>Password </td>
<td><input name = "formpassword"></td>
</tr>
<tr>
<td></td><td><input name ="butlogin" type = "submit" value = "login"></td>
</tr>
</table>
</form>