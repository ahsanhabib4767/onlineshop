<?php session_start();
include '../database/database.php';

if( isset($_GET['out']) && $_GET['out']== 1 ){
    unset($_SESSION['user']);
    unset($_SESSION['logged']);
}
elseif( isset($_SESSION['logged']) && $_SESSION['logged'] == TRUE){
    header("location:index.php");
}

$message = "";
if (!empty($_POST)) {
    $username = htmlentities($_POST['adminUser'], ENT_QUOTES);
    $pass1 = htmlentities($_POST['adminPass'], ENT_QUOTES);
    
    $q = mysqli_query($con,"select * from admin_table where adminUser = '$username'");
    $data = mysqli_fetch_assoc($q);
    if( !empty($pass1) && $data['adminPass'] == $pass1 ){
        $_SESSION['userid'] = $data['adminId'];
        $_SESSION['name'] = $data['adminUser'];
        $_SESSION['logged'] = true;
        header("location:index.php");
    }
    else echo "Wrong try!";
}
?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<form action="login.php" method="post">
			<h1>Admin Login</h1>
			
	
			<div>
				<input type="text" placeholder="Username" required="" name="adminUser"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" name="adminPass"/>
			</div>
			<div>
				<input type="submit" value="Log in" name="submit" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Login!!</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>