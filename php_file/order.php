<?php 

	
include 'database.php';

$id = $_POST['id'];

	$query = $link->query("SELECT * FROM myorder WHERE u_id = '$id' AND status = '0'");
	$result = array();

	while ($rowData = $query->fetch_assoc()) {
		$result[] = $rowData;
	}


	echo json_encode($result);
