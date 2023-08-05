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
			$user_email = $_POST['user_email'];
			$user_phone = $_POST['user_phone'];
			$user_birthday = $_POST['user_birthday'];
			$user_address = $_POST['user_address'];
			$expiration_date = $_POST['expiration_date'];

			$pass1 = $_POST['pass1'];
			$pass2 = $_POST['pass2'];

			$add = '';

			// Check email isset
            $sql_email = "SELECT * FROM user Where user_email = '$user_email'";
            $result_email = mysqli_query($conn_vn, $sql_email);
            $row_email = mysqli_num_rows($result_email);

            if ($row_email > 0) {
                echo '<script type="text/javascript">alert(\'Email đá tồn tại.\')</script>';
				return false;
            }

			if ($pass1 != '' && $pass2 != '') {
				if ($pass1 != $pass2) {
					echo '<script type="text/javascript">alert(\'Mật khẩu không khớp.\')</script>';
					return false;
				} else {
					$pass = password_hash($pass1, PASSWORD_DEFAULT);
					// $add .= " , user_password = '$pass' ";
				}
			}
			

			$sql = "INSERT INTO user (user_name, user_email, user_phone, user_birthday, user_address, expiration_date, user_password) VALUES ('$user_name', '$user_email', '$user_phone', '$user_birthday', '$expiration_date', '$user_password')";

			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm tải khoản khách hàng thành công.\');window.location.href="index.php?page=tai-khoan-user"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	user($_GET['id']);

	// $info = $action->getDetail('user', 'user_id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin tài khoản khách<br /><br /></p>  
            <p class="subLeftNCP"><a href="index.php?page=tai-khoan-user">Quay lại</a><br /><br /></p>   
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Họ tên</p>
            <input type="text" class="txtNCP1" name="user_name"  required/>
            <p class="titleRightNCP">Email</p>
            <input type="text" class="txtNCP1" name="user_email"  required/>
            <p class="titleRightNCP">Số điện thoại</p>
            <input type="text" class="txtNCP1" name="user_phone"  required/>
            <p class="titleRightNCP">Ngày sinh</p>
            <input type="date" class="txtNCP1" name="user_birthday"  />
            <p class="titleRightNCP">Địa chỉ</p>
            <input type="text" class="txtNCP1" name="user_address"  />
            <p class="titleRightNCP">Ngày kết thúc</p>
            <input type="date" class="txtNCP1" name="expiration_date"  />
            <p class="titleRightNCP">Mật khẩu</p>
            <input type="text" class="txtNCP1" name="pass1" required="" />
            <p class="titleRightNCP">Nhập lại mật khẩu</p>
            <input type="text" class="txtNCP1" name="pass2" required="" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>