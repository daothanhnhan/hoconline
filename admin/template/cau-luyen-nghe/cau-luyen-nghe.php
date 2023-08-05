<?php
    $rows = $acc->getList("cau_luyen_nghe","nhom_luyen_nghe_id",$_GET['nhom_luyen_nghe_id'],"id","asc",$trang, 20, "cau-luyen-nghe");//var_dump($rows);
    $nhom_luyen_nghe = $action->getDetail('nhom_luyen_nghe', 'id', $_GET['nhom_luyen_nghe_id']);
    $product_id = $nhom_luyen_nghe['product_id'];
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-cau-luyen-nghe&nhom_luyen_nghe_id=<?= $_GET['nhom_luyen_nghe_id'] ?>">Thêm câu luyên nghe</a></h1>
        <a href="index.php?page=nhom-luyen-nghe&product_id=<?= $product_id ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Câu hỏi</th>
                    <th>Câu 1</th>
                    <th>Câu 2</th>
                    <th>Câu 3</th>
                    <th>Câu 4</th>
                    <th>Đáp án</th>
                    <th>Hoạt động</th>
                    <!-- <th>Câu hỏi</th> -->
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
                            <td><?= $row['cau_hoi']?></td>
                            <td><?= $row['cau_1']?></td>
                            <td><?= $row['cau_2']?></td>
                            <td><?= $row['cau_3']?></td>
                            <td><?= $row['cau_4']?></td>
                            <td><?= $row['cau_dung']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-cau-luyen-nghe&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-cau-luyen-nghe&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <!-- <td><a href="index.php?page=giao-trinh-bai-cau-hoi&giao_trinh_bai_id=<?= $row['id'] ?>" title="">Câu hỏi</a></td> -->
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