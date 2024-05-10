<?php
session_start();

$server = "localhost";
$username = "root";
$password = "";
$database = "webdb";
$conn = mysqli_connect($server, $username, $password, $database) or die("can't connect to db");
$conn->set_charset("utf8");
