<!DOCTYPE html>
<html>
<head>
	<title>Connectify - Seeker</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="css/individual_css/seeker_login.css">
	<link rel="icon" href="user/img/symbol.png" type="image/gif" />
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>
<body>
	<div class="container" id="main">
		<div class="sign-up">
			<form action="register_user.php" method="post">
				<h1>Create Account</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
					<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
					<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<p>or use your email for registration</p>
				<input type="text" name="name" placeholder="Name" required="">
				<input type="email" name="email" placeholder="Email" required="">
				<input type="password" name="password" placeholder="Password" required="">
				<button type="submit" name="submit">Sign Up</button>
			</form>
		</div>
		<div class="sign-in">
			<form action="login_user.php" method="post">
				<h1>Sign in</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
					<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
					<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<p>or use your account</p>
				<input type="email" name="email" placeholder="Email" required="">
				<input type="password" name="password" placeholder="Password" required="">
				
				<button type="submit" name="submit">Sign In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-right">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your personal info</p>
					<button id="signUp">Sign Up</button>
				</div>
				<div class="overlay-left">
					<h1>Hello, Friend</h1>
					<p>Enter your personal details and start journey with us</p>
					<button id="signIn">Sign In</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		const signUpButton = document.getElementById('signUp');
		const signInButton = document.getElementById('signIn');
		const main = document.getElementById('main');
		signUpButton.addEventListener('click', () => {
			main.classList.add("right-panel-active");
		});
		signInButton.addEventListener('click', () => {
			main.classList.remove("right-panel-active");
		});
	</script>
</body>
</html>