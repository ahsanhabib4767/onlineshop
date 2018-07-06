<?php 
include('inc/header.php');
?>

<?php

include_once("config.php");
include ("connection.php");

$message = "";
if (isset($_POST['submit'])) {
    $cname = htmlentities($_POST['cname'], ENT_QUOTES);
    $username = htmlentities($_POST['username'], ENT_QUOTES);
    $pass1 = htmlentities($_POST['pass1'], ENT_QUOTES);
    $pass2 = htmlentities($_POST['pass2'], ENT_QUOTES);
    $caddress = htmlentities($_POST['caddress'], ENT_QUOTES);
    $cmail = htmlentities($_POST['cmail'], ENT_QUOTES);
    $cphone = htmlentities($_POST['cphone'], ENT_QUOTES);
    
    
    if($pass1 == $pass2){
        $q = mysqli_query($conn,"insert into customer_reg values('','$cname','$username','$pass1','$caddress','$cmail','$cphone') ");
        if ($q) {
        	?>
        	<script>
        		alert("$message");
        	</script>
        	<?php
            $message = "Registration succeed.";
        }
        else $message = "Failed!";
    }
    else $message = "Passwords did not match!";
}
?>
<div class="shopping_cart">
					
						<?php
if(isset($_SESSION["cart_products"]) && count($_SESSION["cart_products"])>0)
{
	echo '<div class="cart-view-table-front" id="view-cart">';
	echo '<h3>Your Shopping Cart</h3>';
	echo '<form method="post" action="cart_update.php">';
	echo '<table width="100%"  cellpadding="6" cellspacing="0">';
	echo '<tbody>';

	$total =0;
	$b = 0;
	foreach ($_SESSION["cart_products"] as $cart_itm)
	{
		$product_name = $cart_itm["product_name"];
		$product_qty = $cart_itm["product_qty"];
		$product_price = $cart_itm["product_price"];
		$product_code = $cart_itm["product_code"];
		//$product_color = $cart_itm["product_color"];
		$bg_color = ($b++%2==1) ? 'odd' : 'even'; //zebra stripe
		echo '<tr class="'.$bg_color.'">';
		echo '<td>Qty <input type="text" size="2" maxlength="2" name="product_qty['.$product_code.']" value="'.$product_qty.'" /></td>';
		echo '<td>'.$product_name.'</td>';
		echo '<td><input type="checkbox" name="remove_code[]" value="'.$product_code.'" /> Remove</td>';
		echo '</tr>';
		$subtotal = ($product_price * $product_qty);
		$total = ($total + $subtotal);
	}
	echo '<td colspan="4">';
	echo '<button type="submit">Update</button><a href="view_cart.php" class="button">Checkout</a>';
	echo '</td>';
	echo '</tbody>';
	echo '</table>';
	
	$current_url = urlencode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
	echo '<input type="hidden" name="return_url" value="'.$current_url.'" />';
	echo '</form>';
	echo '</div>';

}
?>
						
			      </div>
 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Existing Customers</h3>
        	<p>Sign in with the form below.</p>
        	<form action="log.php" method="POST">
                	<input type="text" name="username" placeholder="username">
                    <input type="password" name="pass1" placeholder="Password">
                    <div class="search" type="submit"><div><button class="grey" name="submit">Login</button></div></div>
                 </form>
                 <br><br>
                 <p class="note">If you forgot your passoword just enter your email and click <a href="#">here</a></p>
                    
                    </div>

    	<div class="register_account">
    		<h3>Register New Account</h3>
    		
    		<form method="POST" action="">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" placeholder="Your Name" name="cname">
							</div>
							<div>
							<input type="text" placeholder="Your User Name" name="username">
							</div>
							<div>
							   <input type="text" placeholder="Password" name="pass1">
							</div>
							
							<div>
								<input type="text" placeholder="Confirm Password" name="pass2">
							</div>
							<div>
								<input type="text" placeholder="Address" name="caddress">
							</div>
		    			 
		    			
						
		    			  </td> 
		    			  <td>     
	
		           <div>
		          <input type="text" placeholder="Email" name="cmail">
		          </div>
				  <div>
							<input type="text" placeholder="Phone number" name="cphone">
						</div>
				  
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search" type="submit"><div><button class="grey" name="submit">Create Account</button></div></div>
		    <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
    <?php 
include('inc/footer.php');
?>
 </div>
