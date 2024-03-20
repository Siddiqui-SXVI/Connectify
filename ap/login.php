<?php  
	include ("../connection.php");
  	session_start();
  	if(isset($_POST['submit']))
	{
		$username = $_POST['username'];
		$passwd = $_POST['password'];

		$sql = "select * from admin_detail where a_uname = '$username' and a_passwd='$passwd'";
		$result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
		
		if ($count==1)
		{
			$_SESSION['admin'] = $username;
			header("location:register_user.php");	
		}
		else
		{
			$_SESSION['err_login'] = "Invalid Login Attempt. Please Verify your Email and Password for the same.";
			header("location:index.php");
		}
	}
?>