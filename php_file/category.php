<?php 

	
include 'database.php';

// Get language parameter
$lang = $_GET['lang'];

	$query = $link->query("SELECT id,name_$lang as name,image FROM category");
	$result = array();

	while ($rowData = $query->fetch_assoc()) {
		$result[] = $rowData;
	}


	echo json_encode($result);
