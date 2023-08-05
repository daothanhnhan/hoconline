<?php 
	include_once dirname(__FILE__) . "/../database.php";

	$json = $_GET['json'];
	// echo $json;
	if (strpos($json, 'children') === false) {
		$arr = json_decode($json, true);
		// var_dump($arr);
		$count = count($arr);
		// var_dump($arr[0]);
		$d = 0;
		foreach ($arr as $item) {
			$d++;
			$sql = "UPDATE giao_trinh_chinh_bai SET sort = $d WHERE id = ".$item['id'];//echo $sql;
			$result = mysqli_query($conn_vn, $sql);
		}
		echo 'thanh cong';
	} else {
		echo 'that bai';
	}
?>