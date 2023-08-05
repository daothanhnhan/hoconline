<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$cau_so = $_GET['cau'];//var_dump($cau_so);
	$chon = $_GET['chon'];//var_dump($chon);
	$stt = $_GET['stt'];

	if (!isset($_SESSION['ket_qua'])) {
		$_SESSION['ket_qua'] = array();
	}

	// if (!isset($_SESSION['tra_loi_de_thi'])) {
	// 	$_SESSION['tra_loi_de_thi'] = array();
	// 	$_SESSION['tra_loi_de_thi'][] = array($cau_so, $chon);
	// } else {
	// 	$_SESSION['tra_loi_de_thi'][] = array($cau_so, $chon);
	// }

	$bai = $action->getDetail('cau_de_thi_jlpt', 'id', $cau_so);

	$dap_an = $bai['cau_dung'];

	$text=str_ireplace('<p>','',$bai['cau_hoi']);
    $text=str_ireplace('</p>','',$text);

	$cau_1 = '';
	$cau_2 = '';
	$cau_3 = '';
	$cau_4 = '';
	if ($chon == $dap_an) {
		$_SESSION['ket_qua'][] = 1;
		if ($dap_an == 1) {
			$cau_1 = 'dung';
		}
		if ($dap_an == 2) {
			$cau_2 = 'dung';
		}
		if ($dap_an == 3) {
			$cau_3 = 'dung';
		}
		if ($dap_an == 4) {
			$cau_4 = 'dung';
		}
	} else {
		$_SESSION['ket_qua'][] = 0;
		if ($dap_an == 1) {
			$cau_1 = 'dung';
		}
		if ($dap_an == 2) {
			$cau_2 = 'dung';
		}
		if ($dap_an == 3) {
			$cau_3 = 'dung';
		}
		if ($dap_an == 4) {
			$cau_4 = 'dung';
		}

		if ($chon == 1) {
			$cau_1 = 'sai';
		}
		if ($chon == 2) {
			$cau_2 = 'sai';
		}
		if ($chon == 3) {
			$cau_3 = 'sai';
		}
		if ($chon == 4) {
			$cau_4 = 'sai';
		}
	}
?>
<span class="cauhoi jp-22"><?= $stt ?>. <?= $text ?></span>
	<span class="frame4"><span class="answer jp-22 <?= $cau_1 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_1"><?= $bai['cau_1'] ?></span></span>
	<span class="frame4"><span class="answer jp-22 <?= $cau_2 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" ><?= $bai['cau_2'] ?></span></span>
	<span class="frame4"><span class="answer jp-22 <?= $cau_3 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" ><?= $bai['cau_3'] ?></span></span>
	<span class="frame4"><span class="answer jp-22 <?= $cau_4 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" ><?= $bai['cau_4'] ?></span></span>