<?php
    include "database.php";
    
    $username = $_POST['username'];
    $pass     = $_POST['password'];

    $q = $link->query("select * from users where username ='".$username."' and password = '".$pass."'");
    $result = array();

    while($fetchData = $q->fetch_assoc()){
        $result[] = $fetchData;
    }
    echo json_encode($result);
?>