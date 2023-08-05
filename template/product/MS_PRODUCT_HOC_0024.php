<?php 
	$list_bai_giao_trinh = $action->getList('giao_trinh_bai', 'giao_trinh_id', $_GET['trang'], 'id', 'asc', '', '', '');
	$giao_trinh = $action->getDetail('giao_trinh', 'id', $_GET['trang']);
?>
<div class="container">
	<div class="row">
		<h1 style="font-size: 24px;text-align: center;font-weight: bold;"><?= $giao_trinh['name'] ?></h1>
		<div style="margin-top: 20px;margin-bottom: 20px;">
			<?php foreach ($list_bai_giao_trinh as $item) { ?>
			<p><a href="/giao-trinh-bai-cau-hoi/<?= $item['id'] ?>" title=""><?= $item['name'] ?></a></p>
			<?php } ?>
		</div>
		
	</div>
</div>