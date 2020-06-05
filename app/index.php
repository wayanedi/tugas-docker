<?php
	include 'connect.php';
	session_start();
	

	if(isset($_POST['submit'])){

		$username = $_POST['email'];
		$password = $_POST['password'];
		$sql = "select * from user where Email='".$username."' and Password='".$password."'";
		$result = mysqli_query($con,$sql);

		if(mysqli_num_rows($result) >0){
			$data = mysqli_fetch_assoc($result);
			$_SESSION['id']=$data['id'];
			header("Location: pendidikan.php");
		}						
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<a href="regis.php"><h3 style="float: left;color: white; margin: 3px;">REGISTRASI</h3></a>
	</header>
	<form action="index.php" method="POST">
		<div class="container-user-akses">
			<div class="element-form">
				<label>Email</label>
				<span><input type="text" name="email" required="Email anda kosong"></span>
			</div>

			<div class="element-form">
				<label>Password</label>
				<span><input type="password" name="password" required="Password anda kosong"></span>
			</div>

			<div class="element-form">
				<span><input type="submit" name="submit" id="submit" value="LOGIN"></span>
			</div>
		</div>	
	</form>
	<footer><p>&copy; Copyright Aryasasta D.S 2019</p></footer>
</body>
</html>