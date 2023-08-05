<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function dien_tu ($id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$text_1 = mysqli_real_escape_string($conn_vn, $_POST['text_1']);
			$dap_an_1 = mysqli_real_escape_string($conn_vn, $_POST['dap_an_1']);
			$text_2 = mysqli_real_escape_string($conn_vn, $_POST['text_2']);
			$dap_an_2 = mysqli_real_escape_string($conn_vn, $_POST['dap_an_2']);
			$text_3 = mysqli_real_escape_string($conn_vn, $_POST['text_3']);
			$nhom_dien_tu_id = mysqli_real_escape_string($conn_vn, $_POST['nhom_dien_tu_id']);
			$sort = mysqli_real_escape_string($conn_vn, $_POST['sort']);

			if (empty($sort)) {
				$sort = 0;
			}
			

			$sql = "UPDATE dien_tu SET text_1 = '$text_1', text_2 = '$text_2', text_3 = '$text_3', dap_an_1 = '$dap_an_1', dap_an_2 = '$dap_an_2', nhom_dien_tu_id = $nhom_dien_tu_id, sort = '$sort' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một điền từ.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	dien_tu($_GET['id']);

	$info = $action->getDetail('dien_tu', 'id', $_GET['id']);

	$nhom_dien_tu = $action->getList('nhom_dien_tu', 'giao_trinh_tab_phu_id', $info['giao_trinh_tab_phu_id'], 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin điền từ<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=dien-tu&giao_trinh_tab_phu_id=<?= $info['giao_trinh_tab_phu_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Text 1</p>
            <input type="text" class="txtNCP1" name="text_1" value="<?= $info['text_1'] ?>" required="" />
            <p class="titleRightNCP">Đáp án 1</p>
            <input type="text" class="txtNCP1" name="dap_an_1" value="<?= $info['dap_an_1'] ?>" />
            <p class="titleRightNCP">Text 2</p>
            <input type="text" class="txtNCP1" name="text_2" value="<?= $info['text_2'] ?>" />
            <p class="titleRightNCP">Đáp án 2</p>
            <input type="text" class="txtNCP1" name="dap_an_2" value="<?= $info['dap_an_2'] ?>" />
            <p class="titleRightNCP">Text 3</p>
            <input type="text" class="txtNCP1" name="text_3" value="<?= $info['text_3'] ?>" />
            <p class="titleRightNCP">Nhóm điền từ</p>
            <select name="nhom_dien_tu_id" class="txtNCP1">
            	<option value="0">Chọn nhóm</option>
            	
            	<?php foreach ($nhom_dien_tu as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['nhom_dien_tu_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Sắp xếp</p>
            <input type="number" class="txtNCP1" name="sort" value="<?= $info['sort'] ?>" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>