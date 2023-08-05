<?php 
	
	$list_nhom_text_de_thi_jlpt = $action->getList('nhom_text_de_thi_jlpt', 'product_id', $_GET['trang'], 'id', 'asc', '', '', '');
?>
<style>

</style>
<div class="container">
	<div class="row">
		<h1>Danh sách các đề thi JLPT</h1>
		<div>
			<?php 
			foreach ($list_nhom_text_de_thi_jlpt as $item_nhom) { 
				echo '<p class="nhom-cua-de-jlpt">'.$item_nhom['name'].'</p>';
				$list_de_thi_jlpt = $action->getList('de_thi_jlpt', 'nhom_text_de_thi_jlpt_id', $item_nhom['id'], 'id', 'asc', '', '', '');
				foreach ($list_de_thi_jlpt as $item) { 
			?>
            <p class="css-item"><a href="/de-thi-jlpt/<?= $item['id'] ?>" title="" class="text-white"><?= $item['name'] ?></a></p>
            <?php } } ?>
		</div>
	</div>
</div>