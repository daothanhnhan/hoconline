<?php 
	$list_nhom_luyen_nghe = $action->getList('nhom_luyen_nghe', 'product_id', $_GET['trang'], 'id', 'asc', '', '', '');
?>
<div class="container">
	<div class="row">
		<h1>Danh sách các mục luyện nghe</h1>
		<div>
			<?php foreach ($list_nhom_luyen_nghe as $item) { ?>
            <p class="css-item"><a href="/bai-luyen-nghe/<?= $item['id'] ?>" title="" class="text-white"><?= $item['name'] ?></a></p>
            <?php } ?>
		</div>
	</div>
</div>