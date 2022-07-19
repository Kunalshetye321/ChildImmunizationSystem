<?php

$dbhost = "localhost";
$dbuser = "saroot";
$dbpass = "rooy";
$dbname = "child_immune_db";

if (!($con = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname))) {
    die("Failed to connect!");
}

?>
