<?php 
	function dang_binh_luan () {
		global $conn_vn;
		if (isset($_POST['dang_binh_luan'])) {
			$note = mysqli_real_escape_string($conn_vn, $_POST['note']);
			$ngay = date('Y-m-d H:i:s');

			if (isset($_SESSION['user_id_gbvn'])) {
				$user_id = $_SESSION['user_id_gbvn'];
				$sql = "INSERT INTO binh_luan (user_id, note, ngay) VALUES ('$user_id', '$note', '$ngay')";
				$result = mysqli_query($conn_vn, $sql);

				if ($result) {
					echo '<script>alert(\'Bạn vừa đăng được một bình luận.\');</script>';
				} else {
					echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
				}
			} else {
				echo '<script>alert(\'Bạn chưa đăng nhập.\');</script>';
			}
		}
	}
	dang_binh_luan();

	$list_binh_luan = $action->getList('binh_luan', '', '', 'id', 'desc', '', '', '');
?>

<p style="font-weight: bold;font-size: 20px;">Đăng bình luận</p>
<div class="form-dang">
	<div style="width: 50px;display: inline-block;height: 50px;"><img src="/images/icons/person.png" alt="person" width="100%"></div>
	<div style="display: inline-block;width: calc(100% - 150px);">
		<form action="" method="post" accept-charset="utf-8" id="binh-luan">
			<textarea name="note" style="width: 100%;height: 50px;" required=""></textarea>
		</form>
	</div>
	<div style="width: 60px;display: inline-block;height: 50px;"><button type="submit" name="dang_binh_luan" form="binh-luan" class="btn-success" style="float: left;border: 0;padding: 10px;border-radius: 3px;">Đăng</button></div>
	<hr>
</div>
<div class="cac-binh-luan">
<?php 
foreach ($list_binh_luan as $item) { 
	$user = $action->getDetail('user', 'user_id', $item['user_id']);
?>
<div style="width: 100%;">
	<div style="width: 50px;display: inline-block;height: 50px;float: left;"><img src="/images/icons/person.png" alt="person" width="100%"></div>
	<div style="display: inline-block;width: calc(100% - 150px);min-height: 50px;margin-left: 5px;">
		<p><span style="color: #0b890b;font-weight: bold;"><?= $user['user_name'] ?></span> <?= $item['note'] ?></p>
		<p><?= date('d/m/Y H:i', strtotime($item['ngay'])) ?></p>
	</div>
	<hr>
</div>
<?php } ?>
</div>