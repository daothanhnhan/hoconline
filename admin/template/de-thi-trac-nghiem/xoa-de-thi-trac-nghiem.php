<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM de_thi_trac_nghiem WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM de_thi_trac_nghiem WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=de-thi-trac-nghiem&product_id='.$product_id);
?>