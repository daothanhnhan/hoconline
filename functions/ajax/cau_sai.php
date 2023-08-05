<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../pagination/Pagination.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$so_da_lam = 0;
	if (!isset($_SESSION['cau_sai'])) {
		echo 0;
	} else {
		$sai = 0;
		foreach ($_SESSION['cau_sai'] as $item) {
			foreach ($item as $val) {
				if ($val == 1) {
					$sai++;
				}
				$so_da_lam++;
			}
		}
		echo $sai;
	}
	///////////// cap nhat cau dung cho ket qua kiem tra
	if (isset($_SESSION['ket_qua_kiem_tra_id'])) {
		$ket_qua_kiem_tra_id = $_SESSION['ket_qua_kiem_tra_id'];
		$ket_qua_kiem_tra = $action->getDetail('ket_qua_kiem_tra', 'id', $ket_qua_kiem_tra_id);
		$tong = $ket_qua_kiem_tra['tong'];

		if ($tong == $so_da_lam) {
			$dung = $so_da_lam - $sai;
		} else {
			$dung = $so_da_lam - $sai;
		}

		$sql = "UPDATE ket_qua_kiem_tra SET dung = '$dung' WHERE id = $ket_qua_kiem_tra_id";
		$result = mysqli_query($conn_vn, $sql);
		////////// so cau dung cao nhat cho user
		if (isset($_SESSION['user_id_gbvn'])) {
			$user = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
			$cau_do_diem = $user['cau_do_diem'];
			if ($dung > $cau_do_diem) {
				$sql = "UPDATE user SET cau_do_diem = $dung WHERE user_id = ".$_SESSION['user_id_gbvn'];
				$result = mysqli_query($conn_vn, $sql);
			}
		}
	}
?>