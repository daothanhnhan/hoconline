<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM giao_trinh_chinh WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$product_id = $row['product_id'];

	$sql = "DELETE FROM giao_trinh_chinh WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=giao-trinh-chinh&product_id='.$product_id);
?>