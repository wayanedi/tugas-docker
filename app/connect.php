<?php
	$db = getenv('MYSQL_DATABASE');
	$server = getenv('MYSQL_SERVER');
	$user = getenv('MYSQL_USER');
	$pass = getenv('MYSQL_PASSWORD');

	$con = mysqli_connect($server,$user,$pass,$db) or die("failed to connect");
?>