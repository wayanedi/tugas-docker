<?php
	$server = 'mysql';
	$user = 'root';
	$pass = 'mypw';
	$db = 'db-tugas5';
	$port = '3306';

	$con = mysqli_connect($server,$user,$pass,$db, $port) or die("failed to connect");
?>