<?php 
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$user_id = $_GET['user_id'];

	$user = $action->getDetail('user', 'user_id', $user_id);

	if ($user['vip'] == 1) {
		$sql = "UPDATE user SET vip = 0 WHERE user_id = $user_id";
	} else {
		$sql = "UPDATE user SET vip = 1 WHERE user_id = $user_id";
	}
	$result = mysqli_query($conn_vn, $sql);
?>