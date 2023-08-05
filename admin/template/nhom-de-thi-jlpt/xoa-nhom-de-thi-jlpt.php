<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM nhom_de_thi_jlpt WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$de_thi_jlpt_id = $row['de_thi_jlpt_id'];

	$sql = "DELETE FROM nhom_de_thi_jlpt WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=nhom-de-thi-jlpt&de_thi_jlpt_id='.$de_thi_jlpt_id);
?>