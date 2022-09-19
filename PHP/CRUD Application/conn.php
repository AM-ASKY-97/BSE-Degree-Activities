<?php
    $servername = "localhost";
    $hostname = "root";
    $password = "";
    $dbName = "emp_db";

    $con = mysqli_connect($servername, $hostname, $password, $dbName);

    if(!$con)
    {
        die ("Connection Error".mysqli_connect_error());
    }
?>