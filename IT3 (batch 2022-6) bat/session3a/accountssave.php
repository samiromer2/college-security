 <?php
session_start();

$loginusername = $_SESSION['username']; 
$servername = "localhost";
$username = "root";
$password = "oracle";
$dbname = "accounting3itA";

//print_r($_POST);
$accountname = $_POST['accountname'];
$accountamount = $_POST['accountamount'];
$cashmovement = $_POST['cashmovement'];
$accountdate = $_POST['accountdate'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection


$sql = "INSERT INTO `accounts`(`Account Name`, `Account Amount`, `Cash Movement`, `Account date`,`membername`) VALUES ('$accountname','$accountamount','$cashmovement','$accountdate','$loginusername'
)";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

header("Location:accounts.php");
?> 