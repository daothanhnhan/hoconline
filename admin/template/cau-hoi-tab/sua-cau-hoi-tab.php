<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function cau_hoi_tab ($id) {
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
			$nhom_cau_hoi_tab_id = mysqli_real_escape_string($conn_vn, $_POST['nhom_cau_hoi_tab_id']);
			$sort = mysqli_real_escape_string($conn_vn, $_POST['sort']);

			if (empty($sort)) {
				$sort = 0;
			}
			

			$sql = "UPDATE cau_hoi_tab SET cau_hoi = '$cau_hoi', cau_1 = '$cau_1', cau_2 = '$cau_2', cau_3 = '$cau_3', cau_4 = '$cau_4', cau_dung = '$cau_dung', nhom_cau_hoi_tab_id = '$nhom_cau_hoi_tab_id', sort = '$sort' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một câu hỏi.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	cau_hoi_tab($_GET['id']);

	$info = $action->getDetail('cau_hoi_tab', 'id', $_GET['id']);

	$nhom_dien_tu = $action->getList('nhom_dien_tu', 'giao_trinh_tab_phu_id', $info['giao_trinh_tab_phu_id'], 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin câu hỏi<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=cau-hoi-tab&giao_trinh_tab_phu_id=<?= $info['giao_trinh_tab_phu_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Câu hỏi</p>
            <textarea name="cau_hoi" class="ckeditor" required=""><?= $info['cau_hoi'] ?></textarea>
            <p class="titleRightNCP">Câu 1</p>
            <input type="text" class="txtNCP1" name="cau_1" value="<?= $info['cau_1'] ?>" />
            <p class="titleRightNCP">Câu 2</p>
            <input type="text" class="txtNCP1" name="cau_2" value="<?= $info['cau_2'] ?>" />
            <p class="titleRightNCP">Câu 3</p>
            <input type="text" class="txtNCP1" name="cau_3" value="<?= $info['cau_3'] ?>" />
            <p class="titleRightNCP">Câu 4</p>
            <input type="text" class="txtNCP1" name="cau_4" value="<?= $info['cau_4'] ?>" />
            <p class="titleRightNCP">Câu đúng</p>
            <select name="cau_dung" class="txtNCP1">
            	<option value="1" <?= $info['cau_dung']==1 ? 'selected' : '' ?> >Câu 1</option>
            	<option value="2" <?= $info['cau_dung']==2 ? 'selected' : '' ?> >Câu 2</option>
            	<option value="3" <?= $info['cau_dung']==3 ? 'selected' : '' ?> >Câu 3</option>
            	<option value="4" <?= $info['cau_dung']==4 ? 'selected' : '' ?> >Câu 4</option>
            </select>
            <p class="titleRightNCP">Nhóm câu hỏi</p>
            <select name="nhom_cau_hoi_tab_id" class="txtNCP1">
            	<option value="0">Chọn nhóm</option>
            	<?php foreach ($nhom_dien_tu as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['nhom_cau_hoi_tab_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Sắp xếp</p>
            <input type="number" class="txtNCP1" name="sort" value="<?= $info['sort'] ?>" />
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>