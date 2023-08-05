<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM nhom_cau_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM nhom_cau_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=nhom-cau-do&product_id='.$product_id);
?>