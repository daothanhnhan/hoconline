<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM cau_de_thi_jlpt WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$nhom_de_thi_jlpt_id = $row['nhom_de_thi_jlpt_id'];

	$sql = "DELETE FROM cau_de_thi_jlpt WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=cau-de-thi-jlpt&nhom_de_thi_jlpt_id='.$nhom_de_thi_jlpt_id);
?>