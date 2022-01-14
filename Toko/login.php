<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login | MyComp</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<link href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" rel="stylesheet">
	<link rel="shortcut icon" href="img/icon.png">
</head>
<body id="bg-login">
	<div class="box-login">
		<h2>Login</h2>
		<form action="" method="POST">
			<input type="text" name="user" required="required" placeholder="Username" class="input-control">
			<input type="password" name="pass" required="required" placeholder="Password" class="input-control">
			<input type="text" name="vercode" required="required" placeholder="Verification Code" class="input-captcha" />
			<img src="captcha.php" class="captcha" >
			<input type="submit" name="submit" value="Login" class="btn">
		</form>
		<?php
			session_start();
			include 'db.php';
			if(isset($_POST['submit'])){

				$user = mysqli_real_escape_string($conn, $_POST['user']);
				$pass = mysqli_real_escape_string($conn, $_POST['pass']);

				$cek = mysqli_query($conn, "SELECT * FROM tb_admin WHERE username = '".$user."' AND password = '".MD5($pass)."'");
				if(mysqli_num_rows($cek) > 0 && $_POST["vercode"] == $_SESSION["captcha_code"]){
					$d = mysqli_fetch_object($cek);
					$_SESSION['status_login'] = true;
					$_SESSION['a_global'] = $d;
					$_SESSION['id'] = $d->admin_id;
					echo '<script>window.location="dashboard.php"</script>';
				}elseif ($_POST["vercode"] != $_SESSION["captcha_code"]) {
					echo '<script>alert("Captcha tidak sesuai")</script>';
				}else {
					echo '<script>alert("Username atau password Anda salah!")</script>';
				}

			}
		?>
	</div>
</body>
</html>