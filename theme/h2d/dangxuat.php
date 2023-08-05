<?php 
	// session_destroy();
	$user_id = $_SESSION['user_id_gbvn'];
	$sql = "UPDATE user SET login_state = 0 WHERE user_id = $user_id";
	$result = mysqli_query($conn_vn, $sql);

	unset($_SESSION['user_id_gbvn']);
	unset($_SESSION['user_name_gbvn']);
	if (isset($_COOKIE['user_id_trichdan'])) {
		setcookie('user_id_trichdan', '', time() - 2592000);
	}
	header('location: /dang-nhap');
?>