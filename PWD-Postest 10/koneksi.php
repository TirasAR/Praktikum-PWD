<?php
$host="localhost";
$username="id18163464_mahasiswa";
$password="BtKmrM&*Gz[5R]B4";
$databasename="id18163464_akademik";
$con=@mysqli_connect($host,$username,$password,$databasename);
if (!$con) 
{
    echo "Error: " . mysqli_connect_error();
    exit();
}
?>