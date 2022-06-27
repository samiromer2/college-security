<?php
session_start(); 
print_r($_SESSION);
if (isset($_SESSION['usertype']))
	echo "here";
else 
	echo "non";
	
if ($_SESSION['usertype'] == 'admin')
	echo "hi admin";
if ($_SESSION['usertype'] == 'account') 
	echo "hi account";
?>