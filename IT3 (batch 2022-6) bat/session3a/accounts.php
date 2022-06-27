<?php 
session_start();
if (!isset($_SESSION['username']))
	{
	header("Location:login.php");
	die();
	}
?>
<form method ="POST" action ="accountssave.php">
 <a href="logout.php">Log Out</a> 
<table>
<tr>
<td>Account Name</td> 
<td><input name = "accountname"></td> 
</tr>
<tr>
<td>Account Amount</td> 
<td><input name = "accountamount"></td> 
</tr>
<tr>
<td>Cash Movement</td> 
<td><select name = "cashmovement">
<option>in</option>
<option>out</option>
</select></td>
</tr>
<tr>
<td>Account date</td>
<td><input name = "accountdate" type = 'date'></td> 
</tr>
<tr>
<td></td>
<td><input type = "submit" value = "SAVE"></td>
</tr>
</table>
</form>