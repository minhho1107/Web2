<?php
require $_SERVER['DOCUMENT_ROOT'] . '/database.php';

$id = $_GET['id'];
mysqli_query($conn, "DELETE FROM tblgiohang1 WHERE `tblgiohang1`.`id` = '" . $id . "'");
header("location: hoadon.php");
