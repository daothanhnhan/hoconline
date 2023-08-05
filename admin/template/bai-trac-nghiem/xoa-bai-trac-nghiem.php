<?php 
	$id = $_GET['id'];

	$sql = "SELECT * FROM bai_trac_nghiem WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$bai_hoc_id = $row['bai_hoc_id'];

	$sql = "DELETE FROM bai_trac_nghiem WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=bai-trac-nghiem&bai_hoc_id='.$bai_hoc_id);
?>