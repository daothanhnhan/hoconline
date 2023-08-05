<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function bai_trac_nghiem ($id) {
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
			$cau_1 = mysqli_real_escape_string($conn_vn, $_POST['cau_1']);
			$cau_2 = mysqli_real_escape_string($conn_vn, $_POST['cau_2']);
			$cau_3 = mysqli_real_escape_string($conn_vn, $_POST['cau_3']);
			$cau_4 = mysqli_real_escape_string($conn_vn, $_POST['cau_4']);
			$dap_an = mysqli_real_escape_string($conn_vn, $_POST['dap_an']);

			$sql = "UPDATE bai_trac_nghiem SET name = '$name', cau_1 = '$cau_1', cau_2 = '$cau_2', cau_3 = '$cau_3', cau_4 = '$cau_4', dap_an = '$dap_an' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một câu hỏi.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	bai_trac_nghiem($_GET['id']);

	$info = $action->getDetail('bai_trac_nghiem', 'id', $_GET['id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin câu hỏi<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=bai-trac-nghiem&bai_hoc_id=<?= $info['bai_hoc_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Câu hỏi</p>
            <textarea name="name" class="ckeditor" required=""><?= $info['name'] ?></textarea>
            <p class="titleRightNCP">Câu 1</p>
            <input type="text" class="txtNCP1" name="cau_1" value="<?= $info['cau_1'] ?>" required/>
            <p class="titleRightNCP">Câu 2</p>
            <input type="text" class="txtNCP1" name="cau_2" value="<?= $info['cau_2'] ?>" required/>
            <p class="titleRightNCP">Câu 3</p>
            <input type="text" class="txtNCP1" name="cau_3" value="<?= $info['cau_3'] ?>" required/>
            <p class="titleRightNCP">Câu 4</p>
            <input type="text" class="txtNCP1" name="cau_4" value="<?= $info['cau_4'] ?>" required/>
            <p class="titleRightNCP">Đáp án</p>
            <select name="dap_an" class="txtNCP1">
            	<option value="1" <?= $info['dap_an']==1 ? 'selected' : '' ?> >Câu 1</option>
            	<option value="2" <?= $info['dap_an']==2 ? 'selected' : '' ?> >Câu 2</option>
            	<option value="3" <?= $info['dap_an']==3 ? 'selected' : '' ?> >Câu 3</option>
            	<option value="4" <?= $info['dap_an']==4 ? 'selected' : '' ?> >Câu 4</option>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>