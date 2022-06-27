<?php 
session_start(); 

print_r($_SESSION);
if (!isset($_SESSION['username']))
	{
	header("Location: login.php");
	die();
	}
?>
<form method = "POST" action ="accountssave.php">
<table >
<tr>
<td>Account Name</td> 
<td><input name = "AccountName"></td>
</tr>
<tr><td>Account Amount</td> 
<td><input name = "AccountAmount"></td>
</tr>
<tr><td>Account Movement</td> 
<td>
<select name = "AccountMovement">
<option>in</option>
<option>out</option>
</select>
</td>
</tr>
<tr><td>Account Date</td>
<td> <input name = "AccountDate" type = 'date'></td>
</tr>
<tr>
<td></td>
<td><input type = "submit" value = "Save"></td>
</tr>
</table>
</form>
 <a href="logout.php">Log Out</a> 