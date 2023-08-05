<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM nhom_luyen_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM nhom_luyen_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=nhom-luyen-nghe&product_id='.$product_id);
?>