<?php
    $rows = $acc->getList("giao_trinh_tab_chinh","giao_trinh_chinh_bai_id",$_GET['giao_trinh_chinh_bai_id'],"id","asc",$trang, 20, "giao-trinh-tab-chinh");//var_dump($rows);
    $giao_trinh_chinh_bai = $action->getDetail('giao_trinh_chinh_bai', 'id', $_GET['giao_trinh_chinh_bai_id']);
    $giao_trinh_chinh_id = $giao_trinh_chinh_bai['giao_trinh_chinh_id'];
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-giao-trinh-tab-chinh&giao_trinh_chinh_bai_id=<?= $_GET['giao_trinh_chinh_bai_id'] ?>">Thêm giáo trình tab chính</a></h1>
        <a href="index.php?page=giao-trinh-chinh-bai&giao_trinh_chinh_id=<?= $giao_trinh_chinh_id ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Ảnh</th>
                    <th>Hoạt động</th>
                    <th>Tabs phụ</th>
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
                            <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td>
                            <td style="float: none;"><a href="index.php?page=xoa-giao-trinh-tab-chinh&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-giao-trinh-tab-chinh&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <td><a href="index.php?page=giao-trinh-tab-phu&giao_trinh_tab_chinh_id=<?= $row['id'] ?>" title="">Tabs phụ</a></td>
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