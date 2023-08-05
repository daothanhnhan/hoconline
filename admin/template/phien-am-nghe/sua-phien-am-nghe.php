<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function phien_am_nghe ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/phien-am-nghe/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			// $han_tu = mysqli_real_escape_string($conn_vn, $_POST['han_tu']);
			$dap_an = mysqli_real_escape_string($conn_vn, $_POST['dap_an']);

			$add = '';
			if (!empty($image)) {
				$add .= " , mp3 = '$image' ";
			}
			

			$sql = "UPDATE phien_am_nghe SET dap_an = '$dap_an' $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một phiên âm nghe.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	phien_am_nghe($_GET['id']);

	$info = $action->getDetail('phien_am_nghe', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin phiên âm nghe<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=phien-am-nghe&giao_trinh_tab_phu_id=<?= $info['giao_trinh_tab_phu_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <!-- <p class="titleRightNCP">Hán tự</p>
            <input type="text" class="txtNCP1" name="han_tu" value="<?= $info['han_tu'] ?>" required="" /> -->
            <p class="titleRightNCP">Đáp án</p>
            <input type="text" class="txtNCP1" name="dap_an" value="<?= $info['dap_an'] ?>" required />
            <p class="titleRightNCP">Mp3</p>
            <input type="file" class="txtNCP1" name="image" />
            <audio controls>
			  <source src="horse.ogg" type="audio/ogg">
			  <source src="/images/phien-am-nghe/<?= $info['mp3'] ?>" type="audio/mpeg">
			Your browser does not support the audio element.
			</audio>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>