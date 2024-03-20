<?php
    include("connection.php");
    session_start();
    $email=$_SESSION['user'];

    $sql="update reg_users set login_status=0 where reg_email='$email'";
    $result=mysqli_query($con, $sql);

    if($result){
        unset($_SESSION['user']);
        header("location:index.php");
    }
?>