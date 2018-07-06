<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "varsity2";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block">  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>Customer Id</th>
					<th>Customer User Name</th>
					<th>Customer Name</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone Number</th>
				</tr>
			</thead>
			

			<tbody>
			<?php 
					$sql = "SELECT * FROM customer_reg";
					$result = mysqli_query($conn,$sql);
							while($rows = mysqli_fetch_array($result)){ 
			?>
				<tr class="odd gradeX">
				<td><?php echo $rows[0]?></td>
					<td><?php echo $rows[2]?></td>
					<td><?php echo $rows[1]?></td>
					<td><?php echo $rows[4]?></td>
					<td><?php echo $rows[5]?></td>
					<td><?php echo $rows[6]?></td>
					
				</tr>
				<?php } ?>
				
			
				
				
				
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
