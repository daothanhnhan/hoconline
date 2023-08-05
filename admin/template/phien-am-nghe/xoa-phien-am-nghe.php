<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM phien_am_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$giao_trinh_tab_phu_id = $row['giao_trinh_tab_phu_id'];

	$sql = "DELETE FROM phien_am_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=phien-am-nghe&giao_trinh_tab_phu_id='.$giao_trinh_tab_phu_id);
?>