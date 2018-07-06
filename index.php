
<?php

include_once("config.php");
include('inc/header.php');
include('inc/slider.php');




//current URL of the Page. cart_update.php redirects back to this URL
$current_url = urlencode($url="http://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);
?>

<div class="main">

    <div class="content">
    	
	      <div class="section group">
				
			
<!-- Products List Start -->
<?php
$results = $mysqli->query("SELECT product_id,product_code, product_name, product_desc,name, price FROM products ORDER BY product_id ASC");
if($results){ 
$products_item = '<ul class="products">';
//fetch results set as object and output HTML
while($obj = $results->fetch_object())
{
$products_item .= <<<EOT
	<li class="product">
	<form method="post" action="cart_update.php">
	<div class="product-content"><h3>{$obj->product_name}</h3>
	<div class="product-thumb"><img src="images/{$obj->name}"></div>
	<div class="product-desc">{$obj->product_desc}</div>
	<div class="product-info">
	Price {$obj->price} 
	
	<fieldset>
	
	
	
	<label>
		<span>Quantity</span>
		<input type="text" size="2" maxlength="2" name="product_qty" value="1" />
	</label>
	
	</fieldset>
	<input type="hidden" name="product_code" value="{$obj->product_code}" />
	<input type="hidden" name="type" value="add" />
	<input type="hidden" name="return_url" value="{$current_url}" />
	<div align="center"><button type="submit" class="add_to_cart">Add</button></div>
	</div></div>
	</form>
	</li>
EOT;
}
$products_item .= '</ul>';
echo $products_item;
}
?>  
</div>  
</div>
<!-- Products List End -->
<hr/>
<hr/>
<div class="section group">
				
			
<!-- Products List Start -->
<?php
$results = $mysqli->query("SELECT product_id,product_code, product_name, product_desc,name, price FROM products ORDER BY product_id ASC");
if($results){ 
$products_item = '<ul class="products">';
//fetch results set as object and output HTML
while($obj = $results->fetch_object())
{
$products_item .= <<<EOT
	<li class="product">
	<form method="post" action="cart_update.php">
	<div class="product-content"><h3>{$obj->product_name}</h3>
	<div class="product-thumb"><img src="images/{$obj->name}"></div>
	<div class="product-desc">{$obj->product_desc}</div>
	<div class="product-info">
	Price {$obj->price} 
	
	<fieldset>
	
	
	
	<label>
		<span>Quantity</span>
		<input type="text" size="2" maxlength="2" name="product_qty" value="1" />
	</label>
	
	</fieldset>
	<input type="hidden" name="product_code" value="{$obj->product_code}" />
	<input type="hidden" name="type" value="add" />
	<input type="hidden" name="return_url" value="{$current_url}" />
	<div align="center"><button type="submit" class="add_to_cart">Add</button></div>
	</div></div>
	</form>
	</li>
EOT;
}
$products_item .= '</ul>';
echo $products_item;
}
?>  
</div>
<?php 
include('inc/footer.php');
?>
