<?php
    session_start();
    include("connection.php");
    if(isset($_POST['submit'])){
        $email=$_POST['email'];
        $password=$_POST['password'];

        $sql="select reg_email, reg_password from reg_comp where reg_email = '$email' and reg_password='$password'";
        $result=mysqli_query($con,$sql);
        $row=mysqli_fetch_array($result, MYSQLI_ASSOC);
        $count=mysqli_num_rows($result);

        if($count== 1){
            $_SESSION['user']=$email;

            $sql="update reg_comp set login_status=1 where reg_email='$email'";
            $result=mysqli_query($con, $sql);
            header("location:comp/dashboard_comp.php");

        }else{
            $_SESSION['err_login']="Invalid Login Attempt. Please Verify Your Email and Password.";
            header("location:hire_login.php");
        }
    }
?>