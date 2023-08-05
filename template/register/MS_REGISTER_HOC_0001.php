<?php 
	$list_luu_de_thi = $action->getList('luu_de_thi', 'user_id', $_SESSION['user_id_gbvn'], 'id', 'desc', '', '', '');//var_dump($list_luu_de_thi);
?>
<div class="nav-tabs-custom">
    <ul class="nav nav-tabs">
        <li class="active"><a href="#settings" data-toggle="tab">LƯU KẾT QUẢ THI</a></li>
    </ul>
    <div class="tab-content">
        <div class="active tab-pane" id="settings">
            <table class="table table-striped">
				<thead>
					<tr>
						<th>STT</th>
						<th>Tên đề thi</th>
						<th>Ngày</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$i = 1;
						foreach ($list_luu_de_thi as $item) {
					?>
						<tr>
							<td><?= $i++ ?></td>
							<td>
								<a href="/ket-qua-thi/<?= $item['id'] ?>" title=""><?= $item['name'] ?></a>
							</td>
							<td><?= $item['ngay'] ?></td>
							
						</tr>
					<?php } ?>
				</tbody>
			</table>
        </div>
    </div>
</div>
<style type="text/css" media="screen">
	.nav-tabs-custom>.nav-tabs>li.active {
	    border-top-color: #167f34;
	}
	.nav-tabs-custom>.nav-tabs>li {
	    border-top: 3px solid transparent;
	    margin-bottom: -2px;
	    margin-right: 5px;
	}
</style>