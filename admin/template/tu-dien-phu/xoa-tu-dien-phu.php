<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM tu_dien_1 WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$tu_dien_id = $row['tu_dien_id'];

	$sql = "DELETE FROM tu_dien_1 WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=tu-dien-phu&tu_dien_id='.$tu_dien_id);
?>