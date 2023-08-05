<?php 
    function uploadPicture($src, $img_name, $img_temp){

		$src = $src.$img_name;//echo $src;

		if (!@getimagesize($src)){

			if (move_uploaded_file($img_temp, $src)) {

				return true;

			}

		}

	}

	

	function phien_am ($giao_trinh_tab_phu_id) {
		global $conn_vn;
		if (isset($_POST['add_trademark'])) {
			$src= "../images/";
			// $src = "uploads/";

			$image = '';
			if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){

				uploadPicture($src, $_FILES['image']['name'], $_FILES['image']['tmp_name']);
				$image = $_FILES['image']['name'];

			}

			$han_tu = mysqli_real_escape_string($conn_vn, $_POST['han_tu']);
			$dap_an = mysqli_real_escape_string($conn_vn, $_POST['dap_an']);
			

			$sql = "INSERT INTO phien_am (han_tu, dap_an, giao_trinh_tab_phu_id) VALUES ('$han_tu', '$dap_an', '$giao_trinh_tab_phu_id')";
			$result = mysqli_query($conn_vn, $sql);
			if ($result) {
				echo '<script type="text/javascript">alert(\'Bạn đã thêm được một phiên âm.\');window.location.href="index.php?page=phien-am&giao_trinh_tab_phu_id='.$giao_trinh_tab_phu_id.'"</script>';
			} else {
				echo '<script type="text/javascript">alert(\'Có lỗi xảy ra.\')</script>';
				echo mysqli_error($conn_vn);
			}
			
		}
	}

	phien_am($_GET['giao_trinh_tab_phu_id']);
?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="rowNodeContentPage">
        <div class="leftNCP">
            <span class="titLeftNCP">Nội dung </span>
            <p class="subLeftNCP">Nhập thông tin phiên âm<br /><br /></p>     
            <p class="subLeftNCP"><a href="index.php?page=phien-am&giao_trinh_tab_phu_id=<?= $_GET['giao_trinh_tab_phu_id'] ?>">Quay lại</a><br /><br /></p>     
                    
        </div>
        <div class="boxNodeContentPage">
            <p class="titleRightNCP">Hán tự</p>
            <input type="text" class="txtNCP1" name="han_tu" required="" />
            <p class="titleRightNCP">Đáp án</p>
            <input type="text" class="txtNCP1" name="dap_an" />
            
        </div>
    </div><!--end rowNodeContentPage-->
    
    <button class="btn btnSave" type="submit" name="add_trademark">Lưu</button>
</form>
            
<p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>