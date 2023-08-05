<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM giao_trinh_bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$giao_trinh_id = $row['giao_trinh_id'];

	$sql = "DELETE FROM giao_trinh_bai WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=giao-trinh-bai&giao_trinh_id='.$giao_trinh_id);
?>