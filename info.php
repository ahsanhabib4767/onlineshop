
<?php

include_once("connection.php");
include('inc/header.php');

?>

<div class="main">

    <div class="content">
    	
	      <div class="section group">
<?php
$query= mysqli_query($conn,"SELECT * FROM `customer_reg` WHERE `id` = '".$_SESSION['userid']."' ")or die(mysqli_error());
$arr = mysqli_fetch_array($query);
$num = mysqli_num_rows($query);
?>
<?php if($num>0){?>
<table class="container">
	<thead>
		<tr>
			<th><h1>Name</h1></th>
			<th><h1>User Name</h1></th>
			<th><h1>Email</h1></th>
			<th><h1>Address</h1></th>
			<th><h1>Number</h1></th>
		</tr>
	</thead>
	<tbody>
	
		<tr>
			<td>Name: <?php echo $arr['cname']; ?></td>
			<td>Email: <?php echo $arr['username']; ?></td>
			<td>Email: <?php echo $arr['cmail']; ?></td>
			<td>Address: <?php echo $arr['caddress']; ?></td>
			<td>Phone: <?php echo $arr['cphone']; ?></td>
		</tr>
		
	</tbody>
</table>
<?php }else{ ?>
 User not found.
<?php } ?>
</div>
<hr/>
<hr/>
<div class="section group">
<h3>Order History</h3>


<table class="container">
	<thead>
		<tr>
			<th><h1>Product Quantity</h1></th>
			<th><h1>Product Codes</h1></th>
			<th><h1>Amount</h1></th>
			<th><h1>Date</h1></th>
			<th><h1>Status</h1></th>
		</tr>
	</thead>
	<tbody>
	
		<?php 
					$sql = "SELECT * FROM `order1` WHERE `userid` = '".$_SESSION['userid']."' ";
					$result = mysqli_query($conn,$sql);
							while($rows = mysqli_fetch_array($result)){ 
			?>
				<tr class="odd gradeX">
					<td><?php echo $rows[2]?></td>
					<td><?php echo $rows[3]?></td>
					<td><?php echo $rows[4]?></td>
					<td><?php echo $rows[5]?></td>
					<td><?php echo $rows[6]?></td>
					</tr>
		<?php } ?>
	</tbody>
</table>

</div>
<?php 
include('inc/footer.php');
?>
