<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giao_trinh_tab_phu ($id) {
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
			// $content = mysqli_real_escape_string($conn_vn, $_POST['content']);
			$noi_dung = mysqli_real_escape_string($conn_vn, $_POST['noi_dung']);
			$cau_hoi = mysqli_real_escape_string($conn_vn, $_POST['cau_hoi']);
			$phien_am = mysqli_real_escape_string($conn_vn, $_POST['phien_am']);
			$phien_am_nghe = mysqli_real_escape_string($conn_vn, $_POST['phien_am_nghe']);
			$dien_tu = mysqli_real_escape_string($conn_vn, $_POST['dien_tu']);

			$sql = "UPDATE giao_trinh_tab_phu SET name = '$name', note = '$note', noi_dung = '$noi_dung', cau_hoi = '$cau_hoi', phien_am = '$phien_am', phien_am_nghe = '$phien_am_nghe', dien_tu = '$dien_tu' WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một giáo trình tab phụ.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	giao_trinh_tab_phu($_GET['id']);

	$info = $action->getDetail('giao_trinh_tab_phu', 'id', $_GET['id']);

	$list = array(1, 2, 3, 4, 5);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin tab phụ<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=giao-trinh-tab-phu&giao_trinh_tab_chinh_id=<?= $info['giao_trinh_tab_chinh_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            
            <p class="titleRightNCP">Nội dung</p>
            <textarea name="note" class="ckeditor" required=""><?= $info['note'] ?></textarea>
            
            <p class="titleRightNCP">Nội dung</p>
            <select name="noi_dung" style="display: block;" >
            	<?php foreach ($list as $item) { ?>
            	<option value="<?= $item ?>" <?= $info['noi_dung']==$item ? 'selected' : '' ?> ><?= $item ?></option>
            	<?php } ?>
            </select>	
            <p class="titleRightNCP">Câu hỏi</p>
            <select name="cau_hoi" style="display: block;" >
            	<?php foreach ($list as $item) { ?>
            	<option value="<?= $item ?>" <?= $info['cau_hoi']==$item ? 'selected' : '' ?> ><?= $item ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Phiên âm</p>
            <select name="phien_am" style="display: block;" >
            	<?php foreach ($list as $item) { ?>
            	<option value="<?= $item ?>" <?= $info['phien_am']==$item ? 'selected' : '' ?> ><?= $item ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Phiên âm nghe</p>
            <select name="phien_am_nghe" style="display: block;" >
            	<?php foreach ($list as $item) { ?>
            	<option value="<?= $item ?>" <?= $info['phien_am_nghe']==$item ? 'selected' : '' ?> ><?= $item ?></option>
            	<?php } ?>
            </select>
            <p class="titleRightNCP">Điền từ</p>
            <select name="dien_tu" style="display: block;" >
            	<?php foreach ($list as $item) { ?>
            	<option value="<?= $item ?>" <?= $info['dien_tu']==$item ? 'selected' : '' ?> ><?= $item ?></option>
            	<?php } ?>
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>