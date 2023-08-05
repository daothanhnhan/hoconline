<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM bai_hoc_cap_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM bai_hoc_cap_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=bai-hoc-cap-do&product_id='.$product_id);
?>