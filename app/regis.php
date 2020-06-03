<?php
	include 'connect.php';
	

	if(isset($_POST['submit'])){

			$username = $_POST['email'];
			$password = $_POST['password'];
			$sql = "INSERT INTO user (Email,Password) VALUES ('".$username."','".$password."') ";
			$result = mysqli_query($con,$sql);
			if($result){
				header("location:index.php");
			}else{
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
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
		<a href="index.php"><h3 style="float: left;color: white; margin: 3px;">LOGIN</h3></a>
	</header>
	<form action="regis.php" method="POST">
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
				<span><input type="submit" name="submit" id="submit" value="REGISTRASI"></span>
			</div>
		</div>	
	</form>
	<footer><p>&copy; Copyright Aryasasta D.S 2019</p></footer>
</body>
</html>