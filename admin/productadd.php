<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php
$con = mysqli_connect("localhost", 'root', '', 'varsity2');
if (!$con) {
    echo "hello";
    }
?>


<div class="grid_10">
    <div class="box round first grid">
        <h2>Add New Product</h2>
        <div class="block">               
         <form action="" method="Post" enctype="multipart/form-data">
            <table>
               
                <tr>
                    <td>
                        <label>Code</label>
                    </td>
                    <td>
                        <input type="text" name="pcode" placeholder="Enter Product Code..." class="medium" />
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Description</label>
                    </td>
                    <td>
                        <input type="text" name="pdesc" placeholder="Enter Product description..." class="medium" />
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Name</label>
                    </td>
                     <td>
                        <input type="text" name="pname" placeholder="Enter Product Name.." class="medium" />
                    </td>
                </tr>
				
				
				<tr>
                    <td>
                        <label>Image</label>
                    </td>
                    <td>
                        <input type="file" name="image" class="medium"/>

                    </td>
                </tr>
            
                <tr>
                    <td>
                        <label>Price</label>
                    </td>
                    <td>
                        <input type="text" name="pprice" placeholder="Enter Product Name.." class="medium" />
                    </td>
                </tr>
				
				

				<tr>
                    
                    <td>
                        <input type="submit" name="submit" value="Upload">
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<?php
mysqli_connect("localhost",'root','','varsity2') or die(mysqli_error());

 if(isset($_FILES['image'])){

                $file = $_FILES['image']['tmp_name'];

            }
    if(!isset($file)){
        
    echo 'please select an image'; 
    }
 
 else{ 
    $codes = htmlentities($_POST['pcode'], ENT_QUOTES);
        $desc = htmlentities($_POST['pdesc'], ENT_QUOTES);
    

 $name = htmlentities($_POST['pname'], ENT_QUOTES);
$image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
$image_name= addslashes($_FILES['image']['name']);
$image_size= getimagesize($_FILES['image']['tmp_name']); 

 $price = htmlentities($_POST['pprice'], ENT_QUOTES);
   if($image_size==FALSE)
       echo "not image";
   
   else{
   $q = mysqli_query($con, "insert into products values('','$codes','$name','$desc','$image_name','$image','$price') ");
        if ($q) {
            echo "<script> alert(Inserted!)</script>";
        }
        else echo "<script>Failed!</script>";
    }
 }


 
 
 ?> 

<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>


