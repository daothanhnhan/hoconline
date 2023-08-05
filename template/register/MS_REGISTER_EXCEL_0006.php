<?php
	if (!isset($_SESSION['user_id_gbvn'])) {
		header('location: /');
	}
	$slug = $_GET['slug'];
	$active = 'active';
	function check_type_account () {
		global $conn_vn;
		$user_id = $_SESSION['user_id_gbvn'];
		$sql = "SELECT * FROM user WHERE user_id = $user_id";
		$result = mysqli_query($conn_vn, $sql);
		$row = mysqli_fetch_assoc($result);
		if ($row['id_fb'] != '' || $row['id_go'] != '') {
			return 'false';
		} else {
			return 'true';
		}
	}
	$kq_check_type_account = check_type_account();
?>
<div class="order">
	<ul class="infor-user">
		<li><h3 class="title-infor">Quản lý giao dịch</h3></li>		
		<li class="<?php if($slug == 'luu-ket-qua-thi'){ echo $active; } ?>"><a href="/luu-ket-qua-thi" title=""><i class="fa fa-shopping-bag" aria-hidden="true"></i> Lưu kết quả thi</a></li>

		<li class="<?php if($slug == 'thong-bao-user'){ echo $active; } ?>"><a href="/thong-bao-user" title=""><i class="fa fa-user" aria-hidden="true"></i> Thông báo từ admin</a></li>

		<li class="<?php if($slug == 'lich-su-hoat-dong'){ echo $active; } ?>"><a href="/lich-su-hoat-dong" title=""><i class="fa fa-user" aria-hidden="true"></i> Lịch sử hoạt động</a></li>

		<li class="<?php if($slug == 'ket-qua-kiem-tra'){ echo $active; } ?>"><a href="/ket-qua-kiem-tra" title=""><i class="fa fa-user" aria-hidden="true"></i> Kết quả kiểm tra</a></li>

		<li class="<?php if($slug == 'thong-tin-tai-khoan'){ echo $active; } ?>"><a href="/thong-tin-tai-khoan" title=""><i class="fa fa-user" aria-hidden="true"></i> Thông tin tài khoản</a></li>
		<?php if ($kq_check_type_account == 'true') { ?>
		<li class="<?php if($slug == 'doi-mat-khau'){ echo $active; } ?>"><a href="/doi-mat-khau" title=""><i class="fa fa-user" aria-hidden="true"></i> Đổi mật khẩu</a></li>
		<?php } ?>
		<!-- <li class="<?php if($slug == 'thong-tin-bao-hanh'){ echo $active; } ?>"><a href="/thong-tin-bao-hanh" title=""><i class="fa fa-user" aria-hidden="true"></i> Thông tin bảo hành</a></li> -->
		<li class=""><a href="/dang-xuat" title=""><i class="fa fa-user" aria-hidden="true"></i> Đăng xuất</a></li>
	</ul>
</div>