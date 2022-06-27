<?php 
session_start();
if (isset($_POST['loginbut']))
{
$servername = "localhost";
$username = "root";
$password = "oracle";
$dbname = "accounting3ita";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection

$formusername = $_POST['formusername'];
$fpassword = $_POST['fpassword'];

$sql = "SELECT  `membertype` FROM `member` WHERE 
membername = '$formusername' and memberpass ='$fpassword'
";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
//admin //account
$_SESSION["username"] = $formusername;
$_SESSION["usertype"] = $row['membertype'];
if ( $row['membertype'] == 'admin')
{
	header("Location:adminarea.php");
	die();
}
	if ($row['membertype'] == 'account')
	{
	header("Location:accounts.php");
	die();
	}
}

} else {
  echo "wrong username or password";
}

//print_r($_POST);
}
?>

<form method ="POST" action="login.php">
<table>
<tr>
<td>
User name
</td>
<td>
<input name = "formusername">
</td>
</tr>
<tr>
<td>
Password
</td>
<td>
<input name ="fpassword">
</td>
</tr>
<tr>
<td></td>
<td><input name = "loginbut"type = "submit" value ="Login"></td>
</tr>
</table>
</form>