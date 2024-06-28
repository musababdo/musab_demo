<?php
$date  = $_POST['date'];
$imagesJson = $_POST['images'];
$images = json_decode($imagesJson);

  // Connect to database
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "musab_demo";
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $myimg = array();
  foreach ($images as $image) {
	$decode = base64_decode($image);
	$path = "images/".uniqid().'.jpeg';
	$finalpath = "http://10.0.2.2/musab_demo/".$path;
	file_put_contents($path,$decode);
    $myimg[] = $finalpath; 
  }
  $json=json_encode($myimg);
  $sql = "UPDATE products SET a_id = '$a_id',image = '$json', WHERE id = '$id'";

    if ($conn->query($sql) !== TRUE) {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }

  $conn->close();
?>