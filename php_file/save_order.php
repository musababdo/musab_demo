<?php 

	include 'database.php';

	$username = $_POST['username'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$product = $_POST['product'];
	$price = $_POST['price'];
	$street = $_POST['street'];
	$building = $_POST['building'];
	$floor = $_POST['floor'];
	$nearest = $_POST['nearest'];
	$payment = $_POST['payment'];
	$date = $_POST['date'];
	$u_id = $_POST['u_id'];

	$link->query("INSERT INTO myorder(name,email,phone,product,price,street,building,floor,nearest,payment,date,u_id)VALUES('".$username."','".$email."','".$phone."','".$product."','".$price."','".$street."','".$building."','".$floor."','".$nearest."','".$payment."','".$date."','".$u_id."')");