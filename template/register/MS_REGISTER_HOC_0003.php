<?php 
	$lich_su_hoat_dong = $action->getList('lich_su_hoat_dong', 'user_id', $_SESSION['user_id_gbvn'], 'id', 'desc', '', '', '');
?>
<h1 style="font-size: 24px;font-weight: bold;">Lịch sử hoạt động</h1>
<?php foreach ($lich_su_hoat_dong as $item) { ?>
<div>
	
	<p>Bạn đã đăng nhập vào website với địa chỉ IP: <?= $item['ip'] ?></p>
	<p>Chú ý: Hệ thống chỉ chấp nhận một(1) tài khoản sử dụng cho (1) học viên. xem quy định tại đây (<?= $item['ngay'] ?>)</p>
	<hr>
</div>
<?php } ?>