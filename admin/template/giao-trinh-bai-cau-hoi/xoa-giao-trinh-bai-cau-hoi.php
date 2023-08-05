<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM giao_trinh_bai_cau_hoi WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$giao_trinh_bai_id = $row['giao_trinh_bai_id'];

	$sql = "DELETE FROM giao_trinh_bai_cau_hoi WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=giao-trinh-bai-cau-hoi&giao_trinh_bai_id='.$giao_trinh_bai_id);
?>