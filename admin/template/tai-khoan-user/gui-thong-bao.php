<?php 
	$user_info = $action->getDetail('user', 'user_id', $_GET['user_id']);

	function gui_thong_bao ($user_id) {
		global $conn_vn;
		if (isset($_POST['gui_thong_bao'])) {
			$note = mysqli_real_escape_string($conn_vn, $_POST['note']);
			$ngay = date('Y-m-d H:i:s');

			$sql = "INSERT INTO thong_bao_user (note, ngay, user_id) VALUES ('$note', '$ngay', '$user_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script>alert(\'Gửi thông báo thành công.\');</script>';
			} else {
				echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
			}
		}
	}

	gui_thong_bao($_GET['user_id']);
?>

<form action="" method="post">
  <div class="form-group">
	  <label for="comment">Nội dung thông báo cho: <?= $user_info['user_email'] ?></label>
	  <textarea class="form-control" rows="5" id="comment" name="note" required=""></textarea>
	</div>
  <button type="submit" name="gui_thong_bao" class="btn btn-default">Gửi</button>
</form>