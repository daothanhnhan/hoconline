<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giao_trinh_tab_chinh ($id) {
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
			$content = mysqli_real_escape_string($conn_vn, $_POST['content']);
			$tab_chon_id = mysqli_real_escape_string($conn_vn, $_POST['tab_chon_id']);

			$add = '';
			if ($image != '') {
				$add .= " , image = '$image' ";
			}

			$sql = "UPDATE giao_trinh_tab_chinh SET name = '$name', tab_chon_id = '$tab_chon_id' $add WHERE id = $id";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã sửa được một giáo trình tab chính.\')</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	giao_trinh_tab_chinh($_GET['id']);

	$info = $action->getDetail('giao_trinh_tab_chinh', 'id', $_GET['id']);

	$tab_chon = $action->getList('tab_chon', '', '', 'id', 'asc', '', '', '');
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin tab chính<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=giao-trinh-tab-chinh&giao_trinh_chinh_bai_id=<?= $info['giao_trinh_chinh_bai_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" value="<?= $info['name'] ?>" required/>
            
            <p class="titleRightNCP">Chọn loại</p>
            <!-- <input type="file" class="txtNCP1" name="image" /> -->
            <select name="tab_chon_id" class="txtNCP1">
            	<?php foreach ($tab_chon as $item) { ?>
            	<option value="<?= $item['id'] ?>" <?= $item['id']==$info['tab_chon_id'] ? 'selected' : '' ?> ><?= $item['name'] ?></option>
            	<?php } ?>
            </select>
            <!-- <img src="/images/<?= $info['image'] ?>" alt="" width="300"> -->
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>