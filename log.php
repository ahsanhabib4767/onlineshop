<?php session_start();
include 'connection.php';

if( isset($_GET['out']) && $_GET['out']== 1 ){
    unset($_SESSION['user']);
    unset($_SESSION['logged']);
}
elseif( isset($_SESSION['logged']) && $_SESSION['logged'] == TRUE){
    header("location:go.php");
}

$message = "";
if (!empty($_POST)) {
    $username = htmlentities($_POST['username'], ENT_QUOTES);
    $pass1 = htmlentities($_POST['pass1'], ENT_QUOTES);
    
    $q = mysqli_query($conn,"select * from customer_reg where username = '$username' ");
    $data = mysqli_fetch_assoc($q);
    if( !empty($pass1) && $data['pass1'] == $pass1 ){
        $_SESSION['userid'] = $data['id'];
        $_SESSION['name'] = $data['username'];
        $_SESSION['logged'] = true;
        header("location:login.php");
        echo "<script>alert('Thankyou for your login'); </script>";
    }
    else $message = "Wrong try!";

}
?>

<h4><?php echo $message ?></h4>

<form method="post" action="">
    Username <input type="text" name="username" /><br />
    Pass <input type="password" name="pass1" /><br />
    <input type="submit" name="btn" value="Save" /><br />
</form>
<a href="login.php"></a>