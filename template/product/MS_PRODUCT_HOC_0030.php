<?php 
	// $list_de_thi_trac_nghiem = $action->getList('de_thi_trac_nghiem', 'product_id', $_GET['trang'], 'id', 'asc', '', '', '');
	$nhom_de_thi_trac_nghiem = $action->getList('nhom_de_thi_trac_nghiem', 'product_id', $_GET['trang'], 'id', 'asc', '', '', '');
?>
<div class="container">
	<div class="row">
		<h1>Danh sách các đề thi trắc nghiệm</h1>
		<div>
			<?php 
			foreach ($nhom_de_thi_trac_nghiem as $item) { 
				$list_de_thi_trac_nghiem = $action->getList('de_thi_trac_nghiem', 'nhom_de_thi_trac_nghiem_id', $item['id'], 'id', 'asc', '', '', '');
			?>
			<p class="nhom-cua-de-jlpt"><?= $item['name'] ?></p>
				<?php foreach ($list_de_thi_trac_nghiem as $item) { ?>
            <p class="css-item"><a href="/de-thi-trac-nghiem/<?= $item['id'] ?>" title="" class="text-white"><?= $item['name'] ?></a></p>
            	<?php } ?>
            <?php } ?>
		</div>
	</div>
</div>