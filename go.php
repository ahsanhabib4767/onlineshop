<?php session_start();
include 'connection.php';
    if( empty($_SESSION['logged']) || $_SESSION['logged'] != TRUE){
        header("location:login.php");
        die("Please login first!");
    }
?>

<h1>My phonebook</h1>
<h4>Welcome <?php echo $_SESSION['name']; ?></h4>
<p><a href="logout.php">Logout</a></p>