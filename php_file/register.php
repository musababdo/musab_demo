<?php 

	include 'database.php';

	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	$link->query("INSERT INTO users(email,username,password)VALUES('".$email."','".$name."','".$password."')");