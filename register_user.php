<?php
    session_start();
    include("connection.php");

    if(isset($_POST['submit'])){
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        $_SESSION['temp_user'] = $email;

        date_default_timezone_set('Asia/Kolkata');
        $date = date('Y-m-d H:i:s');
        
        $checkmail = " select reg_email from reg_users where reg_email = '$email'";
        $status=mysqli_query($con, $checkmail);

        if(mysqli_num_rows($status)>0){
            $_SESSION['email_err']="Email you entered is already exists with us.";
            header("location:seeker_login.php");
        }else{
            $query=mysqli_query($con,"insert into reg_users(reg_name,reg_email,reg_password,reg_date) values('$name','$email','$password','$date')");
            if($query){
                header("location:seeker_login.php");
            }else{
                header("location:seeker_login.php");
            }
        }
    }
?>