<?php 
	$thong_bao = $action->getList('thong_bao_user', 'user_id', $_SESSION['user_id_gbvn'], 'id', 'desc', '', '', '');
?>
<h1 style="font-size: 24px;font-weight: bold;">Thông báo từ admin</h1>
<?php foreach ($thong_bao as $item) { ?>
<div>
	<p><?= $item['ngay'] ?></p>
	<p><?= $item['note'] ?></p>
	<hr>
</div>
<?php } ?>