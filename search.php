
<?php

include_once("connection.php");
include('inc/header.php');

?>

<div class="main">

    <div class="content">
    	
	      <div class="section group">
<?php
if (isset($_POST['submit'])) {
	$name = $_POST['name'];

$query= mysqli_query($conn,"SELECT * FROM `products` WHERE `product_name` LIKE '%".$name."%'")or die(mysqli_error());
$arr = mysqli_fetch_array($query);
$num = mysqli_num_rows($query);
?>
<?php if($num>0){?>
<table class="container" border="1px">
	<thead>
		<tr>
			<th><h1>Name</h1></th>
			
			<th><h1>Image</h1></th>
			<th><h1>Price</h1></th>
			
		</tr>
	</thead>
	<tbody>
	
		<tr>
			<td>Name: <?php echo $arr['product_name']; ?></td>
			<td><?php echo '<img src="images/'.$arr['name'].'"/>' ?></td>
			
			<td>Price:<?php echo $arr['price']; ?></td>
		</tr>
		
	</tbody>
</table>
<?php }
else{ ?>
 User not found.
<?php }
} 
?>
</div>
<?php 
include('inc/footer.php');
?>
