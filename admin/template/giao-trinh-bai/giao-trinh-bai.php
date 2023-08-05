<?php
    $rows = $acc->getList("giao_trinh_bai","giao_trinh_id",$_GET['giao_trinh_id'],"id","asc",$trang, 20, "giao-trinh-bai");//var_dump($rows);
    $giao_trinh = $action->getDetail('giao_trinh', 'id', $_GET['giao_trinh_id']);
    $product_id = $giao_trinh['product_id'];
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-giao-trinh-bai&giao_trinh_id=<?= $_GET['giao_trinh_id'] ?>">Thêm giáo trình bài</a></h1>
        <a href="index.php?page=giao-trinh&product_id=<?= $product_id ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <!-- <th>Ảnh</th> -->
                    <th>Hoạt động</th>
                    <th>Câu hỏi</th>
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
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-giao-trinh-bai&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-giao-trinh-bai&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <td><a href="index.php?page=giao-trinh-bai-cau-hoi&giao_trinh_bai_id=<?= $row['id'] ?>" title="">Câu hỏi</a></td>
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