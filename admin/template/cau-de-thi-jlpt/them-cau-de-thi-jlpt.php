<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function cau_de_thi_jlpt ($nhom_de_thi_jlpt_id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$cau_hoi = mysqli_real_escape_string($conn_vn, $_POST['cau_hoi']);
			$cau_1 = mysqli_real_escape_string($conn_vn, $_POST['cau_1']);
			$cau_2 = mysqli_real_escape_string($conn_vn, $_POST['cau_2']);
			$cau_3 = mysqli_real_escape_string($conn_vn, $_POST['cau_3']);
			$cau_4 = mysqli_real_escape_string($conn_vn, $_POST['cau_4']);
			$cau_dung = mysqli_real_escape_string($conn_vn, $_POST['cau_dung']);
			$dap_an = mysqli_real_escape_string($conn_vn, $_POST['dap_an']);
			$dich = mysqli_real_escape_string($conn_vn, $_POST['dich']);

			$sql = "INSERT INTO cau_de_thi_jlpt (cau_hoi, cau_1, cau_2, cau_3, cau_4, cau_dung, dap_an, nhom_de_thi_jlpt_id, dich) VALUES ('$cau_hoi', '$cau_1', '$cau_2', '$cau_3', '$cau_4', '$cau_dung', '$dap_an', '$nhom_de_thi_jlpt_id', '$dich')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một câu hỏi.\');window.location.href="index.php?page=cau-de-thi-jlpt&nhom_de_thi_jlpt_id='.$nhom_de_thi_jlpt_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	cau_de_thi_jlpt($_GET['nhom_de_thi_jlpt_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin câu hỏi<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=cau-de-thi-jlpt&nhom_de_thi_jlpt_id=<?= $_GET['nhom_de_thi_jlpt_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Câu hỏi</p>
            <textarea name="cau_hoi" class="ckeditor" required=""></textarea>
            <p class="titleRightNCP">Câu 1</p>
            <input type="text" class="txtNCP1" name="cau_1" required/>
            <p class="titleRightNCP">Câu 2</p>
            <input type="text" class="txtNCP1" name="cau_2" required/>
            <p class="titleRightNCP">Câu 3</p>
            <input type="text" class="txtNCP1" name="cau_3" required/>
            <p class="titleRightNCP">Câu 4</p>
            <input type="text" class="txtNCP1" name="cau_4" required/>
            <p class="titleRightNCP">Câu đúng</p>
            <select name="cau_dung" class="txtNCP1">
            	<option value="1">Câu 1</option>
            	<option value="2">Câu 2</option>
            	<option value="3">Câu 3</option>
            	<option value="4">Câu 4</option>
            </select>
            <p class="titleRightNCP">Đáp án</p>
            <input type="text" class="txtNCP1" name="dap_an" />
            <p class="titleRightNCP">Dịch</p>
            <input type="text" class="txtNCP1" name="dich" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>