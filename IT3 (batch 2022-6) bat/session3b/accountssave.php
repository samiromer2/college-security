 <?php
 session_start(); 
 $logineduser = $_SESSION['username'];
$servername = "localhost";
$username = "root";
$password = "oracle";
$dbname = "accounting3itb";

print_r($_POST);
$AccountName = $_POST['AccountName'];
$AccountAmount = $_POST['AccountAmount'];
$AccountMovement = $_POST['AccountMovement'];
$AccountDate = $_POST['AccountDate'];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO `accounts`( `Account Name`, `Account Amount`, `Account Movement`, `Account Date`,`membername`) VALUES ('$AccountName','$AccountAmount','$AccountMovement','$AccountDate','$logineduser'
)";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

header("Location: formaccounts.php"); 

?> 