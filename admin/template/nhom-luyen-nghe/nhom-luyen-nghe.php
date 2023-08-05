<?php
    $rows = $acc->getList("nhom_luyen_nghe","product_id",$_GET['product_id'],"id","asc",$trang, 20, "nhom-luyen-nghe");//var_dump($rows);
    // $de_thi_jlpt = $action->getDetail('de_thi_jlpt', 'id', $_GET['de_thi_jlpt_id']);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-luyen-nghe&product_id=<?= $_GET['product_id'] ?>">Thêm nhóm luyện nghe</a></h1>
        <a href="index.php?page=sua-san-pham&id=<?= $_GET['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên nhóm</th>
                    <th>Câu luyện nghe</th>
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
                            <td><a href="index.php?page=cau-luyen-nghe&nhom_luyen_nghe_id=<?= $row['id'] ?>" title="">Câu luyện nghe</a></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-luyen-nghe&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-luyen-nghe&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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