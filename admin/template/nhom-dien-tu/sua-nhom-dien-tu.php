<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function nhom_dien_tu ($id) {
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
			$tab_con_id = mysqli_real_escape_string($conn_vn, $_POST['tab_con_id']);
			
			

			$sql = "UPDATE nhom_dien_tu SET name = '$name', note = '$note', tab_con_id = '$tab_con_id' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một nhóm điền từ.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	nhom_dien_tu($_GET['id']);

	$info = $action->getDetail('nhom_dien_tu', 'id', $_GET['id']);

	$tab_con = $action->getList('tab_con', 'giao_trinh_tab_phu_id', $info['giao_trinh_tab_phu_id'], 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin nhóm điền từ<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=nhom-dien-tu&giao_trinh_tab_phu_id=<?= $info['giao_trinh_tab_phu_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required="" />
            <p class="titleRightNCP">Đáp án & Dịch</p>
            <textarea name="note" class="ckeditor"><?= $info['note'] ?></textarea>
            <p class="titleRightNCP">Tab con</p>
            <select name="tab_con_id" class="txtNCP1">
            	<option value="0">Chọn tab con</option>
            	<?php foreach ($tab_con as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['tab_con_id'] ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>