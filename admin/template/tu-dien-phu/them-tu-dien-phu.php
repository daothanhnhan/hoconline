<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function tu_dien_1 ($tu_dien_id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$han_tu = mysqli_real_escape_string($conn_vn, $_POST['han_tu']);
			$phien_am = mysqli_real_escape_string($conn_vn, $_POST['phien_am']);
			$loai = mysqli_real_escape_string($conn_vn, $_POST['loai']);
			$am_han = mysqli_real_escape_string($conn_vn, $_POST['am_han']);
			$nghia = mysqli_real_escape_string($conn_vn, $_POST['nghia']);

			$sql = "INSERT INTO tu_dien_1 (han_tu, phien_am, loai, am_han, nghia, tu_dien_id) VALUES ('$han_tu', '$phien_am', '$loai', '$am_han', '$nghia', '$tu_dien_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một phụ từ điển.\');window.location.href="index.php?page=tu-dien-phu&tu_dien_id='.$tu_dien_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	tu_dien_1($_GET['tu_dien_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin từ điển phụ<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=tu-dien-phu&tu_dien_id=<?= $_GET['tu_dien_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Hán tự</p>
            <input type="text" class="txtNCP1" name="han_tu" required/>
            <p class="titleRightNCP">Phiên âm</p>
            <input type="text" class="txtNCP1" name="phien_am" required/>
            <p class="titleRightNCP">Loại</p>
            <input type="text" class="txtNCP1" name="loai" required/>
            <p class="titleRightNCP">Âm hán</p>
            <input type="text" class="txtNCP1" name="am_han" required/>
            <p class="titleRightNCP">Nghĩa</p>
            <input type="text" class="txtNCP1" name="nghia" required/>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>