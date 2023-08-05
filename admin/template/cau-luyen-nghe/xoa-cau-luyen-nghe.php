<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM cau_luyen_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$nhom_luyen_nghe_id = $row['nhom_luyen_nghe_id'];

	$sql = "DELETE FROM cau_luyen_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cau-luyen-nghe&nhom_luyen_nghe_id='.$nhom_luyen_nghe_id);
?>