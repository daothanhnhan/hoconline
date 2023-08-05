<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$user_id = $_GET['user_id'];
	$de_thi_id = $_GET['de_thi_id'];

	// unset($_SESSION['luu_de_thi']);

	if (!isset($_SESSION['luu_de_thi'])) {
		$_SESSION['luu_de_thi'] = $de_thi_id;

		$de_thi = $action->getDetail('de_thi', 'id', $de_thi_id);
		$de_thi_name = $de_thi['name'];
		$ngay = date('Y-m-d H:i:s');

		$sql = "INSERT INTO luu_de_thi (user_id, name, ngay) VALUES ('$user_id', '$de_thi_name', '$ngay')";
		$result = mysqli_query($conn_vn, $sql);
		$luu_de_thi_id = mysqli_insert_id($conn_vn);

		$_SESSION['luu_de_thi_id'] = $luu_de_thi_id;

		$nhom_de_thi = $action->getList('nhom_de_thi', 'de_thi_id', $de_thi_id, 'id', 'asc', '', '', '');
		foreach ($nhom_de_thi as $item_ndt) {
			$nhom_de_thi_name = $item_ndt['name'];

			$sql = "INSERT INTO luu_nhom_de_thi (luu_de_thi_id, name) VALUES ('$luu_de_thi_id', '$nhom_de_thi_name')";
			$result = mysqli_query($conn_vn, $sql);
			$luu_nhom_de_thi_id = mysqli_insert_id($conn_vn);

			$list_cau = $action->getList('cau_de_thi', 'nhom_de_thi_id', $item_ndt['id'], 'id', 'asc', '', '', '');//var_dump($list_cau);

			foreach ($list_cau as $item) {
				$name = $item['name'];
				$name = str_ireplace('<p>','',$name);
				$name = str_ireplace('</p>','',$name);
				$cau_1 = $item['cau_1'];
				$cau_2 = $item['cau_2'];
				$cau_3 = $item['cau_3'];
				$cau_4 = $item['cau_4'];
				$chon = '';
				$ma_cau = $item['id'];

				$sql = "INSERT INTO luu_cau_de_thi (luu_nhom_de_thi_id, name, cau_1, cau_2, cau_3, cau_4, chon, ma_cau) VALUES ('$luu_nhom_de_thi_id', '$name', '$cau_1', '$cau_2', '$cau_3', '$cau_4', '$chon', '$ma_cau')";
				// echo $sql;
				mysqli_query($conn_vn, $sql);
				// echo mysqli_error($conn_vn);
			}
		}
		
		
	} else {

	}

	if (isset($_SESSION['luu_de_thi_id'])) {
		if (isset($_SESSION['tra_loi_de_thi'])) {
			$luu_de_thi_id = $_SESSION['luu_de_thi_id'];

			$luu_nhom_de_thi = $action->getList('luu_nhom_de_thi', 'luu_de_thi_id', $luu_de_thi_id, 'id', 'asc', '', '', '');
			foreach ($luu_nhom_de_thi as $item_ndt) {
				$list_cau = $action->getList('luu_cau_de_thi', 'luu_nhom_de_thi_id', $item_ndt['id'], 'id', 'asc', '', '', '');//var_dump($list_cau);

				foreach ($list_cau as $item) {
					foreach ($_SESSION['tra_loi_de_thi'] as $item_chon) {
						if ($item['ma_cau'] == $item_chon[0]) {
							$cau_1 = $item['cau_1'];
							$cau_2 = $item['cau_2'];
							$cau_3 = $item['cau_3'];
							$cau_4 = $item['cau_4'];
							$chon = '';
							$id = $item['id'];

							if ($item_chon[1] == 1) {
								$chon = $cau_1;
							}
							if ($item_chon[1] == 2) {
								$chon = $cau_2;
							}
							if ($item_chon[1] == 3) {
								$chon = $cau_3;
							}
							if ($item_chon[1] == 4) {
								$chon = $cau_4;
							}

							$sql = "UPDATE luu_cau_de_thi SET chon = '$chon' WHERE id = $id";
							// echo $sql;
							mysqli_query($conn_vn, $sql);
							// echo mysqli_error($conn_vn);
						}
						
					}
					
				}
			}
		}
	}
?>