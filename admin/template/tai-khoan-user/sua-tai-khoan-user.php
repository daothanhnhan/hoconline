<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function user ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";
			$image = '';

			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$user_name = $_POST['user_name'];
			$user_phone = $_POST['user_phone'];
			$user_birthday = $_POST['user_birthday'];
			$user_address = $_POST['user_address'];
			$expiration_date = $_POST['expiration_date'];

			$pass1 = $_POST['pass1'];
			$pass2 = $_POST['pass2'];

			$add = '';

			if ($pass1 != '' && $pass2 != '') {
				if ($pass1 != $pass2) {
					echo '<script type="text/javascript">alert(\'Mật khẩu không khớp.\')</script>';
					return false;
				} else {
					$pass = password_hash($pass1, PASSWORD_DEFAULT);
					$add .= " , user_password = '$pass' ";
				}
			}
			

			$sql = "UPDATE user SET user_name = '$user_name', user_phone = '$user_phone', user_birthday = '$user_birthday', user_address = '$user_address', expiration_date = '$expiration_date' $add WHERE user_id = $id";

			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa tải khoản khách hàng thành công.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	user($_GET['id']);

	$info = $action->getDetail('user', 'user_id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin tải khoản khách<br /><br /></p>  
            <p class="subLeftNCP"><a href="index.php?page=tai-khoan-user">Quay lại</a><br /><br /></p>   
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Họ tên</p>
            <input type="text" class="txtNCP1" name="user_name" value="<?= $info['user_name'] ?>" required/>
            <p class="titleRightNCP">Số điện thoại</p>
            <input type="text" class="txtNCP1" name="user_phone" value="<?= $info['user_phone'] ?>" required/>
            <p class="titleRightNCP">Ngày sinh</p>
            <input type="date" class="txtNCP1" name="user_birthday" value="<?= $info['user_birthday'] ?>" />
            <p class="titleRightNCP">Địa chỉ</p>
            <input type="text" class="txtNCP1" name="user_address" value="<?= $info['user_address'] ?>" />
            <p class="titleRightNCP">Ngày kết thúc</p>
            <input type="date" class="txtNCP1" name="expiration_date" value="<?= $info['expiration_date'] ?>" />
            <p class="titleRightNCP">Mật khẩu</p>
            <input type="text" class="txtNCP1" name="pass1" />
            <p class="titleRightNCP">Nhập lại mật khẩu</p>
            <input type="text" class="txtNCP1" name="pass2" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>