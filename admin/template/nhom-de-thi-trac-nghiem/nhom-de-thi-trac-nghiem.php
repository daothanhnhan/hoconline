<?php
    $rows = $acc->getList("nhom_de_thi_trac_nghiem","product_id",$_GET['product_id'],"id","asc",$trang, 20, "nhom-de-thi-trac-nghiem");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-de-thi-trac-nghiem&product_id=<?= $_GET['product_id'] ?>">Thêm nhóm đề thi trắc nghiệm</a></h1>
        <a href="index.php?page=sua-san-pham&id=<?= $_GET['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['name']?></td>
                            
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-de-thi-trac-nghiem&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-de-thi-trac-nghiem&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             