<?php 
	$ket_qua_kiem_tra = $action->getList('ket_qua_kiem_tra', 'user_id', $_SESSION['user_id_gbvn'], 'id', 'desc', '', '', '');
?>
<div>
	<?php foreach ($ket_qua_kiem_tra as $item) { ?>
	<div>
		<p>Thời gian thực hiên lúc <span style="font-weight: bold;"><?= date('H:i', strtotime($item['ngay'])) ?></span> ngày <span style="font-weight: bold;"><?= date('d/m/Y', strtotime($item['ngay'])) ?></span></p>
		<p>Tổng điểm: <span style="font-weight: bold;"><?= $item['dung'] ?> / <?= $item['tong'] ?></span></p>
		<p>Kết quả: <span style="font-weight: bold;"><?= $item['dung']==$item['tong'] ? 'Đã qua' : 'Không đạt yêu cầu' ?></span></p>
		<button onclick="xoa_kqkt(<?= $item['id'] ?>)">Xóa</button>
		<hr>
	</div>
	<?php } ?>
</div>
<script>
	function xoa_kqkt (id) {
		var r = confirm("Bạn có chắc muốn xóa.");
		if (r == true) {
		  const xhttp = new XMLHttpRequest();
		  xhttp.onload = function() {
		    // document.getElementById("demo").innerHTML = this.responseText;
		    	location.reload();
		    }
		  xhttp.open("GET", "/functions/ajax/xoa_kqkt.php?id="+id, true);
		  xhttp.send();
		}
		
	}
</script>