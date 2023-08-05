<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM cau_thi_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$nhom_thi_nghe_id = $row['nhom_thi_nghe_id'];

	$sql = "DELETE FROM cau_thi_nghe WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cau-thi-nghe&nhom_thi_nghe_id='.$nhom_thi_nghe_id);
?>