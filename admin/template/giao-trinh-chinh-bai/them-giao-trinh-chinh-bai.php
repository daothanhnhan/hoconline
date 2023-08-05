<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function giao_trinh_chinh_bai ($giao_trinh_chinh_id) {
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
			$dich = mysqli_real_escape_string($conn_vn, $_POST['dich']);
			$sort = mysqli_real_escape_string($conn_vn, $_POST['sort']);

			if (empty($sort)) {
				$sort = 0;
			}

			$sql = "INSERT INTO giao_trinh_chinh_bai (name, note, dich, sort, giao_trinh_chinh_id) VALUES ('$name', '$note', '$dich', '$sort', '$giao_trinh_chinh_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một giáo trình chính bài.\');window.location.href="index.php?page=giao-trinh-chinh-bai&giao_trinh_chinh_id='.$giao_trinh_chinh_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	giao_trinh_chinh_bai($_GET['giao_trinh_chinh_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin giáo trình chính<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=giao-trinh-chinh-bai&giao_trinh_chinh_id=<?= $_GET['giao_trinh_chinh_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Tên</p>
            <input type="text" class="txtNCP1" name="name" required/>
            
            <p class="titleRightNCP">Nội dung</p>
            <textarea name="note" class="ckeditor"></textarea>

            <p class="titleRightNCP">Dịch</p>
            <textarea name="dich" class="ckeditor"></textarea>

            <p class="titleRightNCP">Thứ tự</p>
            <input type="number" class="txtNCP1" name="sort" value="" />
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>