<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kbrcheen";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("خطا در اتصال به دیتابیس کبرچین: " . $conn->connect_error);
}



?>