<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM giao_trinh_tab_phu WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$giao_trinh_tab_chinh_id = $row['giao_trinh_tab_chinh_id'];

	$sql = "DELETE FROM giao_trinh_tab_phu WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=giao-trinh-tab-phu&giao_trinh_tab_chinh_id='.$giao_trinh_tab_chinh_id);
?>