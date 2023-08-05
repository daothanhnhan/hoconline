<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function de_thi_trac_nghiem ($id) {
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
			$note = mysqli_real_escape_string($conn_vn, $_POST['note']);
			$nhom_de_thi_trac_nghiem_id = mysqli_real_escape_string($conn_vn, $_POST['nhom_de_thi_trac_nghiem_id']);

			$sql = "UPDATE de_thi_trac_nghiem SET name = '$name', note = '$note', nhom_de_thi_trac_nghiem_id = '$nhom_de_thi_trac_nghiem_id' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một đề thi trắc nghiệm.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	de_thi_trac_nghiem($_GET['id']);

	$info = $action->getDetail('de_thi_trac_nghiem', 'id', $_GET['id']);

	$nhom_de_thi_trac_nghiem = $action->getList('nhom_de_thi_trac_nghiem', 'product_id', $info['product_id'], 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin đề thi trắc nghiệm<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=de-thi-trac-nghiem&product_id=<?= $info['product_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            <p class="titleRightNCP">Ghi chú</p>
            <input type="text" class="txtNCP1" name="note" value="<?= $info['note'] ?>" />
            <p class="titleRightNCP">Nhóm</p>
            <select name="nhom_de_thi_trac_nghiem_id" class="txtNCP1">
            	<?php foreach ($nhom_de_thi_trac_nghiem as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['nhom_de_thi_trac_nghiem_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>