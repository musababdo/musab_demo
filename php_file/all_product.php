<?php 

	
include 'database.php';

// Get language parameter
$lang = $_GET['lang'];

	$query = $link->query("SELECT id,name_$lang as name,price,discount,info_$lang as info,size,color,image FROM product");
	$result = array();

	while ($rowData = $query->fetch_assoc()) {
		$result[] = $rowData;
	}


	echo json_encode($result);
