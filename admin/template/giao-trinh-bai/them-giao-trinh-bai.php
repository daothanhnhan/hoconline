<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giao_trinh_bai ($giao_trinh_id) {
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
			$show_img = mysqli_real_escape_string($conn_vn, $_POST['show_img']);

			$sql = "INSERT INTO giao_trinh_bai (name, content, image, giao_trinh_id, show_img) VALUES ('$name', '$content', '$image', '$giao_trinh_id', '$show_img')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một giáo trình bài.\');window.location.href="index.php?page=giao-trinh-bai&giao_trinh_id='.$giao_trinh_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
			}
			
		}
	}

	giao_trinh_bai($_GET['giao_trinh_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin bài<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=giao-trinh-bai&giao_trinh_id=<?= $_GET['giao_trinh_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            <p class="titleRightNCP">Nội dung</p>
            <textarea name="content" class="ckeditor"></textarea>
            <p class="titleRightNCP">Ảnh</p>
            <input type="file" class="txtNCP1" name="image" />
            <p class="titleRightNCP">Hiện ảnh</p>
            <select name="show_img"  class="txtNCP1">
            	<option value="0">Ẩn</option>
            	<option value="1">Hiện</option>
            	
            </select>
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>