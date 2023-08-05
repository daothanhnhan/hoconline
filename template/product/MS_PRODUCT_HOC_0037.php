<?php 
	$bai = $action->getList('giao_trinh_chinh_bai', 'giao_trinh_chinh_id', $_GET['trang'], 'sort', 'asc', '', '', '');
?>
<div class="container">
	<?php foreach ($bai as $item) { ?>
	<p class="item-bai"><a href="/giao-trinh-chinh-bai/<?= $item['id'] ?>" title="" class="text-white"><?= $item['name'] ?></a></p>
	<?php } ?>
</div>