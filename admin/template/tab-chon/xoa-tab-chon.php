<?php 
	$id = $_GET['id'];
	$sql = "DELETE FROM tab_chon WHERE id = $id";
	$result = mysqli_query($conn_vn, $sql);
	header('location: index.php?page=tab-chon');
?>