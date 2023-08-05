<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nhom_text_de_thi_jlpt ($product_id) {
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
			// $note = mysqli_real_escape_string($conn_vn, $_POST['note']);

			$sql = "INSERT INTO nhom_text_de_thi_jlpt (name, product_id) VALUES ('$name', '$product_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một nhóm của đề thi JLPT.\');window.location.href="index.php?page=nhom-text-de-thi-jlpt&product_id='.$product_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	nhom_text_de_thi_jlpt($_GET['product_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nhóm của đề thi JLPT<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nhom-text-de-thi-jlpt&product_id=<?= $_GET['product_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>