<?php session_start(); 
if (!isset($_SESSION['membername']))
	header('Location: login.php');
?>
 <a href="logout.php">Log Out</a> 
<h2>HR Form</h2>
<?php 
if (isset($_GET['state']))
	echo "<font color='green'>Your data in</font>";
?>
<form method="POST" action ="hrsavetodatabase.php" >
<table>
<tr>
	<td>Emp name</td> 
	<td><input name = "ename"></td>
</tr>
<tr>
	<td> Address </td>
	<td><input name = "address"></td>
</tr>
<tr>
	<td>phone</td> 
	<td><input name = "phone"></td>
</tr>
<tr>
	<td>Age</td>
	<td><input name = "age"></td>
</tr>
<tr>
	<td>Gender</td> 
	<td><input name = "gender"></td>
</tr>
<tr>
<td>
</td>
<td>
<input type = "submit" value = "Save">
</td>
</tr>
</table>
</form>

