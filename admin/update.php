<?php
   // Create the connection to the database
   $con=mysqli_connect("localhost","root","","varsity2");

  // Check if the connection failed
  if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    die();
   }

if(isset($_POST['department'])){
$department=$_POST['department'];
$sql=mysqli_query($con,"UPDATE order1 SET msg ='".$department."' WHERE o_id=51");


   //$sql = "UPDATE order1 SET msg ='".$column3."' WHERE o_id='".$invoiceid."'";
   if ($sql) {
     echo "inserted";
     header("location:addorder.php");

   }
   else echo "not inserted";

  }
