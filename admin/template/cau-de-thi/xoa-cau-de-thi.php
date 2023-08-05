<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM cau_de_thi WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$nhom_de_thi_id = $row['nhom_de_thi_id'];

	$sql = "DELETE FROM cau_de_thi WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cau-de-thi&nhom_de_thi_id='.$nhom_de_thi_id);
?>