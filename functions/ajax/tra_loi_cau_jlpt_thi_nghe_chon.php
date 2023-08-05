<?php 
	session_start();

	$tong = $_GET['tong'];

	$so_chon = count($_SESSION['tra_loi_de_thi_jlpt_nghe']);

	echo $tong - $so_chon;
?>