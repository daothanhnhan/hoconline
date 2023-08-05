<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$id = $_GET['id'];

	$sql = "DELETE FROM ket_qua_kiem_tra WHERE id = $id";
	mysqli_query($conn_vn, $sql);
?>