<?php 

	include 'database.php';

	$id = $_POST['id'];

	$link->query("DELETE FROM products WHERE id = '".$id."'");