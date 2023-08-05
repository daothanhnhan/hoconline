<?php 
	session_start();
	include_once dirname(__FILE__) . "/../database.php";
	include_once dirname(__FILE__) . "/../pagination/Pagination.php";
	include_once dirname(__FILE__) . "/../library.php";
	include_once dirname(__FILE__) . "/../action.php";

	$action = new action();

	$nhom = $_GET['nhom'];//var_dump($nhom);
	$trang = $_GET['trang'];

	if (!isset($_SESSION['cau_sai'])) {
		$_SESSION['cau_sai'] = array();
	}

	// if (!isset($_SESSION['tra_loi_de_thi_do'])) {
	// 	$_SESSION['tra_loi_de_thi_do'] = array();
	// 	$_SESSION['tra_loi_de_thi_do'][] = array($cau_so, $chon);
	// } else {
		
	// 	$flag = 0;
	// 	foreach ($_SESSION['tra_loi_de_thi_do'] as $key => $val) {
	// 		if ($val[0] == $cau_so) {
	// 			$flag = 1;
	// 			$_SESSION['tra_loi_de_thi_do'][$key][1] = $chon;
	// 		}
	// 	}
	// 	if ($flag == 0) {
	// 		$_SESSION['tra_loi_de_thi_do'][] = array($cau_so, $chon);
	// 	}
	// }

	$bai = $action->getDetail('cau_cau_do', 'id', $cau_so);

	$dap_an = $bai['cau_dung'];

	$text=str_ireplace('<p>','',$bai['cau_hoi']);
    $text=str_ireplace('</p>','',$text);

	$cau_1 = '';
	$cau_2 = '';
	$cau_3 = '';
	$cau_4 = '';
	// if ($chon == $dap_an) {
	// 	if ($dap_an == 1) {
	// 		$cau_1 = 'dung';
	// 	}
	// 	if ($dap_an == 2) {
	// 		$cau_2 = 'dung';
	// 	}
	// 	if ($dap_an == 3) {
	// 		$cau_3 = 'dung';
	// 	}
	// 	if ($dap_an == 4) {
	// 		$cau_4 = 'dung';
	// 	}
	// } else {
	// 	if ($dap_an == 1) {
	// 		$cau_1 = 'dung';
	// 	}
	// 	if ($dap_an == 2) {
	// 		$cau_2 = 'dung';
	// 	}
	// 	if ($dap_an == 3) {
	// 		$cau_3 = 'dung';
	// 	}
	// 	if ($dap_an == 4) {
	// 		$cau_4 = 'dung';
	// 	}

	// 	if ($chon == 1) {
	// 		$cau_1 = 'sai';
	// 	}
	// 	if ($chon == 2) {
	// 		$cau_2 = 'sai';
	// 	}
	// 	if ($chon == 3) {
	// 		$cau_3 = 'sai';
	// 	}
	// 	if ($chon == 4) {
	// 		$cau_4 = 'sai';
	// 	}
	// }

	if ($chon == 1) {
		$cau_1 = 'chon';
	}
	if ($chon == 2) {
		$cau_2 = 'chon';
	}
	if ($chon == 3) {
		$cau_3 = 'chon';
	}
	if ($chon == 4) {
		$cau_4 = 'chon';
	}

	function dap_an ($dap_an, $cau_so, $stt, $trang) {
        global $cau_1;
        global $cau_2;
        global $cau_3;
        global $cau_4;

        $chon = 0;
        foreach ($_SESSION['tra_loi_de_thi_do'] as $key => $val) {
            if ($val[0] == $cau_so) {
                $chon = $_SESSION['tra_loi_de_thi_do'][$key][1];
            }
        }

        $cau_sai = 1;

        if ($chon == $dap_an) {
        	$cau_sai = 0;
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

        if (isset($_SESSION['cau_sai'][$trang][$stt])) {
        	$_SESSION['cau_sai'][$trang][$stt] = $cau_sai;
        } else {
        	$_SESSION['cau_sai'][$trang][$stt] = $cau_sai;
        }
    }

	$list_cau_do = $action->getList('cau_cau_do', 'nhom_cau_do_id', $nhom, 'id', 'asc', $trang, '3', '');//var_dump($list_cau_do);

	$d = 0;
	foreach ($list_cau_do['data'] as $item) { 
		$d++;
        $text=str_ireplace('<p>','',$item['cau_hoi']);
        $text=str_ireplace('</p>','',$text);

        $cau_1 = '';
        $cau_2 = '';
        $cau_3 = '';
        $cau_4 = '';

        dap_an($item['cau_dung'], $item['id'], $d, $trang);
?>
<div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_1 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_tra_loi1(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_2 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_tra_loi1(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_3 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_tra_loi1(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_4 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_tra_loi1(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>

                <div class="dich-cau-do" style="display: none;">
                	<p>Dịch</p>
                	<p><?= $item['dich'] ?></p>
                </div>
            </div>
<?php } ?>