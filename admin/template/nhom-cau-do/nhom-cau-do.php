<?php
    $rows = $acc->getList("nhom_cau_do","product_id",$_GET['product_id'],"id","asc",$trang, 20, "nhom-cau-do");//var_dump($rows);
    // $de_thi_trac_nghiem = $acc->getDetail('de_thi_trac_nghiem', 'id', $_GET['de_thi_trac_nghiem_id']);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-cau-do&product_id=<?= $_GET['product_id'] ?>">Thêm nhóm câu đố</a></h1>
        <a href="index.php?page=sua-san-pham&id=<?= $_GET['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên nhóm</th>
                    <th>Câu hỏi</th>
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
                            <td><a href="index.php?page=cau-cau-do&nhom_cau_do_id=<?= $row['id'] ?>" title="">Câu hỏi</a></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-cau-do&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-cau-do&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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