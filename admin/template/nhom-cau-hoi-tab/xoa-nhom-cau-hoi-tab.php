<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM nhom_cau_hoi_tab WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$giao_trinh_tab_phu_id = $row['giao_trinh_tab_phu_id'];

	$sql = "DELETE FROM nhom_cau_hoi_tab WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=nhom-cau-hoi-tab&giao_trinh_tab_phu_id='.$giao_trinh_tab_phu_id);
?>