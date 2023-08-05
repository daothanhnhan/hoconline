<?php 
	session_start();

	$tong_cau = $_GET['tong_cau'];

	$so_cau_chon = count($_SESSION['ket_qua']);
	$dung = 0;
	$sai = 0;

	foreach ($_SESSION['ket_qua'] as $item) {
		if ($item == 1) {
			$dung++;
		} else {
			$sai++;
		}
	}
?>
<table style="">
        <tbody><tr>
            <td>Tổng số câu hỏi:</td>
            <td><span id="ans-total" style="opacity: 1;"><?= $tong_cau ?></span></td>
        </tr>
        <tr>
            <td>Số câu đã chọn:</td>
            <td><span id="ans-finish" style="opacity: 1;"><?= $so_cau_chon ?></span></td>
        </tr>
        <tr>
            <td>Số câu sai:</td>
            <td><span id="ans-wrong" style="opacity: 1;"><?= $sai ?></span></td>
        </tr>
        <tr>
            <td style="">Tổng điểm:</td>
            <td><span id="ans-score" style="opacity: 1;"><?= $dung ?></span></td>
        </tr>
    </tbody>
</table>