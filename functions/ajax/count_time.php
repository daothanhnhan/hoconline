<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$id = $_GET['id'];

	$de_thi = $action->getDetail('de_thi', 'id', $id);

	if ($de_thi['count_time'] == 1) {
		$sql = "UPDATE de_thi SET count_time = 0 WHERE id = $id";
	} else {
		$sql = "UPDATE de_thi SET count_time = 1 WHERE id = $id";
	}
	$result = mysqli_query($conn_vn, $sql);
?>