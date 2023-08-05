<?php 
	$tu_dien = $action->getDetail('tu_dien', 'name', $_GET['keyword']);//var_dump($tu_dien);
?>
<div class="container">
	<?php 
	if (!empty($tu_dien)) { 
		$list_phu = $action->getList('tu_dien_1', 'tu_dien_id', $tu_dien['tu_dien_id'], 'id', 'asc', '', '', '');
	?>
	<div>
		<p style="font-size: 50px;">Từ tra: <?= $tu_dien['name'] ?></p>
		<p style="font-size: 50px;">Dịch: <?= $tu_dien['dich'] ?></p>
	</div>
	<div>
		<table class="table table-bordered">
		    <thead>
		      <tr>
		        <th>Hán từ</th>
		        <th>Phiên âm</th>
		        <th>Loại</th>
		        <th>Âm hán</th>
		        <th>Nghĩa</th>
		      </tr>
		    </thead>
		    <tbody>
		    <?php foreach ($list_phu as $item) { ?>
		      <tr>
		        <td><?= $item['han_tu'] ?></td>
		        <td><?= $item['phien_am'] ?></td>
		        <td><?= $item['loai'] ?></td>
		        <td><?= $item['am_han'] ?></td>
		        <td><?= $item['nghia'] ?></td>
		        
		      </tr>
		    <?php } ?>
		    </tbody>
		  </table>
	</div>
<?php } else { ?>
	<h1 style="font-size: 50px;color: red;">Không có từ vựng cần tìm.</h1>
<?php } ?>
</div>