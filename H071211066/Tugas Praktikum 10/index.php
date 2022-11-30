<?php
include 'query.php';

// Setting koneksi database tergantung username dan servername anda
$servername = 'localhost';
$username = 'root';
$password = '';
$dbnama = 'classicmodels';

// Melakukan koneksi ke database
$conn = new mysqli($servername, $username, $password, $dbnama);

// Mengecek apakah koneksi error atau tidak
if ($conn->connect_error) {
  die('Connection failed: ' . $conn->connect_error);
}

// start function
$query = new MyQuery($conn);
while (true) {
  $query->show_data();
  echo "\n";
  break;
}
