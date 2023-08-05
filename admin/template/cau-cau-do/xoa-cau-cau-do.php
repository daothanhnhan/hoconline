<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM cau_cau_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$nhom_cau_do_id = $row['nhom_cau_do_id'];

	$sql = "DELETE FROM cau_cau_do WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cau-cau-do&nhom_cau_do_id='.$nhom_cau_do_id);
?>