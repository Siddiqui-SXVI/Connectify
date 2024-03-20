<?php  
  include ("../connection.php");
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="../user/img/symbol.png" type="image/icon type">
    <link rel="stylesheet" href="css/sajawat.css">
    <title>Connectify</title>
</head>
<body>
    <div class="login-box">
        <form action="login.php" method="post">
            <div class="login-header">
                <header>Admin Login</header>
            </div>
            <div class="input-box">
                <input type="text" class="input-field" name="username" placeholder="Username" autocomplete="off" required>
            </div>
            <div class="input-box">
                <input type="password" class="input-field" name="password" placeholder="Password" autocomplete="off" required>
            </div>
            <br>
            <div class="input-submit">
                <button class="submit-btn" name="submit" id="submit"></button>
                <label for="submit">Sign In</label>
            </div>
        </form>
    </div>
</body>
</html>