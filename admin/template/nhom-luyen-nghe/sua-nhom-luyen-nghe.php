<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nhom_luyen_nghe ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/mp3/";
			// $src = "uploads/";

			$mp3 = '';
			if(isset($_FILES['mp3']) && $_FILES['mp3']['name'] != ""){

				uploadPicture($src, $_FILES['mp3']['name'], $_FILES['mp3']['tmp_name']);
				$mp3 = $_FILES['mp3']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);

			$add = '';
			if ($mp3 != '') {
				$add .= " , mp3 = '$mp3' ";
			}

			$sql = "UPDATE nhom_luyen_nghe SET name = '$name' $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một nhóm luyện nghe.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	nhom_luyen_nghe($_GET['id']);

	$info = $action->getDetail('nhom_luyen_nghe', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nhóm luyện nghe<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nhom-luyen-nghe&product_id=<?= $info['product_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <p class="titleRightNCP">Mp3</p>
            <input type="file" class="txtNCP1" name="mp3" />
            <audio controls>
			  <source src="horse.ogg" type="audio/ogg">
			  <source src="/images/mp3/<?= $info['mp3'] ?>" type="audio/mpeg">
			Your browser does not support the audio element.
			</audio>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>