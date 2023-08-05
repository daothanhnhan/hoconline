<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nhom_de_thi ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$name = mysqli_real_escape_string($conn_vn, $_POST['name']);
			$dap_an = mysqli_real_escape_string($conn_vn, $_POST['dap_an']);
			

			$sql = "INSERT INTO nhom_de_thi_jlpt (name, de_thi_jlpt_id, dap_an) VALUES ('$name', '$id', '$dap_an')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một nhóm đề thi JLPT.\');window.location.href="index.php?page=nhom-de-thi-jlpt&de_thi_jlpt_id='.$id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	nhom_de_thi($_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nhóm câu hỏi<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nhom-de-thi-jlpt&de_thi_jlpt_id=<?= $_GET['id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            
            <p class="titleRightNCP">Tên nhóm</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Đáp án</p>
            <textarea name="dap_an" class="txtNCP1 ckeditor"></textarea>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>