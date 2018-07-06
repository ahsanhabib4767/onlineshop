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
  			<div class="support_desc">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3652.2113986400464!2d90.37670551504698!3d23.73983978459451!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8b5efebc74f%3A0x5d3408ffcea51200!2sSoi+3!5e0!3m2!1sen!2s!4v1467392445509"
						width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
  			</div>
  				<img src="web/images/contact.png" alt="" />
  			<div class="clear"></div>
  		</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>Contact Us</h2>
					    <form method="POST" action="">
					    	<div>
						    	<span><label>NAME</label></span>
						    	<span><input type="text" name="name" value=""></span>
						    </div>
						    <div>
						    	<span><label>E-MAIL</label></span>
						    	<span><input type="text" name="email" value="" placeholder="someone@miil.com"></span>
						    </div>
						    <div>
						     	<span><label>MOBILE.NO</label></span>
						    	<span><input type="text" name="mobile" value="" placeholder="+8801700000011"></span>
						    </div>
						    <div>
						    	<span><label>SUBJECT</label></span>
						    	<span><textarea name="subject"></textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" name="submit" value="SUBMIT"></span>
						  </div>
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
