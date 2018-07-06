<?php
session_start();
include "config.php";


	// This is not the proper way use PDO 
	
	
	$userid = $_SESSION['userid'];
	$id = $_REQUEST['id'];
	$pcode = $_REQUEST['pid'];
   $amount  = $_REQUEST['amount'];
   $msg='pending';

if (isset($_SESSION['userid'])) {
	$q=mysqli_query($mysqli,"INSERT into order1 (o_id,userid,qty,procode,amount,msg) VALUES('','".$userid."','".$id."','".$pcode."','".$amount."','".$msg."')");
	if ($q) {
		echo "<script>alert('Order is pending')</script>";
		echo "<script>window.open('payment.php','_self')</script>";
		//unset($_SESSION['session_unset();']);
		//session_unset();
		
		
		
}
}
   

	else {
	echo "<script>alert('Not login!!Login First')</script>";
		echo "<script>window.open('login.php','_self')</script>";
	}


//else echo "<script>window.open('view_cart.php','_self'</script>";

?>