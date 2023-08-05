<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nhom_de_thi ($de_thi_trac_nghiem_id) {
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
			

			$sql = "INSERT INTO nhom_de_thi (name, de_thi_trac_nghiem_id) VALUES ('$name', '$de_thi_trac_nghiem_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một nhóm đề thi.\');window.location.href="index.php?page=nhom-de-thi&de_thi_trac_nghiem_id='.$de_thi_trac_nghiem_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	nhom_de_thi($_GET['de_thi_trac_nghiem_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nhóm đề thi trắc nghiệm<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nhom-de-thi&de_thi_trac_nghiem_id=<?= $_GET['de_thi_trac_nghiem_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            
            <p class="titleRightNCP">Tên nhóm</p>
            <input type="text" class="txtNCP1" name="name" required/>
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>