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
					<th>Product Code</th>
					<th>Description</th>
					<th>Name</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
			</thead>
			

			<tbody>
			<?php 
					$sql = "SELECT * FROM products";
					$result = mysqli_query($conn,$sql);
							while($rows = mysqli_fetch_array($result)){ 
			?>
				<tr class="odd gradeX">
					<td><?php echo $rows[1]?></td>
					<td><?php echo $rows[3]?></td>
					<td><?php echo $rows[2]?></td>
					<td class="center"><?php echo $rows[6]?></td>
					<td><a href="">Edit</a> || <a href="">Delete</a></td>
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
