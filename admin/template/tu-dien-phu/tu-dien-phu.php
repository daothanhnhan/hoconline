<?php
    $rows = $acc->getList("tu_dien_1","tu_dien_id",$_GET['tu_dien_id'],"id","asc",$trang, 20, "tu-dien-phu");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-tu-dien-phu&tu_dien_id=<?= $_GET['tu_dien_id'] ?>">Thêm từ điển phụ</a></h1>
        <a href="index.php?page=tu-dien" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Hán tự</th>
                    <th>Nghĩa</th>
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
                            <td><?= $row['han_tu']?></td>
                            <td><?= $row['nghia']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-tu-dien-phu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-tu-dien-phu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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