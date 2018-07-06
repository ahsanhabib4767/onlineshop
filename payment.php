<?php 
include('inc/header.php');
?>
<?php 
include("connection.php");
if (isset($_POST['submit'])) {
	$name = htmlentities($_POST['name']);
	$email = htmlentities($_POST['email']);
	$mobile = htmlentities($_POST['mobile']);
	$subject = htmlentities($_POST['subject']);

	mysqli_query($conn,"INSERT into contact (cname,cemail,cmobile,csubject) VALUES('$name','$email','$mobile','$subject')");?>
	<script>alert("Thankyou for your query"); </script><?php
}?>

 <div class="main">
    <div class="content">
    	<div class="support">
 
  				<img src="web/images/contact.png" alt="" />
  			<div class="clear"></div>
  		</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>How you pay</h2>
				  	<fieldset>Pay offline</fieldset>
					  <img src="soi/1.jpg" height="90px" width="100%"> 
					  <a href="view_cart.php">View Your Cart</a> 
				  </div>
				  <div class="contact-form">
				  	<h2>Pay By bcash</h2>
				  	<fieldset>Pay on bcash</fieldset>
					  <img src="soi/howto.jpg" height="100%" width="100%"> 
					  <h2>Send your transaction Id after shopping</h2>
					  <form method="POST" action="">
					  	<input type="text" name="trans">
					  	<input type="submit" name="submit" name="send">
					  </form>
				  </div>
  				</div>
				<div class="col span_1_of_3">
      			<div class="company_address">
				     	<h2>Company Information :</h2>
						    	<p>Soi 3 Restrurent</p>
						   		<p>Dhanmondi,Dhaka,</p>
						   		<p>Bangladesh</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span>info@mycompany.com</span></p>
				   		<p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
				   </div>
				 </div>
			  </div>    	
    </div>
    <?php 
include('inc/footer.php');
?>
 </div>
