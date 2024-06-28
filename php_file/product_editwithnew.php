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

  // $myimg = array();
  // foreach ($images as $image) {
	// $path = "images/".uniqid().'.jpeg';
	// $finalpath = "http://10.0.2.2/carshow/".$path;
	// file_put_contents($path,$image);
  //   $myimg[] = $finalpath; 
  // }
  $json=json_encode($images);
  $sql = "UPDATE products SET a_id = '$a_id',image = '$json' WHERE id = '$id'";

    if ($conn->query($sql) !== TRUE) {
      echo "Error: " . $sql . "<br>" . $conn->error;
    }

  $conn->close();
?>