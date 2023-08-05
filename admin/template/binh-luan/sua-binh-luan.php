<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function binh_luan ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$note = mysqli_real_escape_string($conn_vn, $_POST['note']);
			// $ngay = date('Y-m-d H:i:s');
			// $user_id = $_POST['user_id'];

			$sql = "UPDATE binh_luan SET note = '$note' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một bình luận.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	binh_luan($_GET['id']);

	// $list_user = $action->getList('user', '', '', 'user_id', 'asc', '', '', '');
	$info = $action->getDetail('binh_luan', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin bình luận<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=binh-luan">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            
            <p class="titleRightNCP">Binh luận</p>
            <textarea name="note" class="txtNCP1" required=""><?= $info['note'] ?></textarea>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>