<?php 
	session_start();

	$tong = $_GET['tong'];

	$so_chon = count($_SESSION['tra_loi_de_luyen_nghe']);

	echo $tong - $so_chon;
?>