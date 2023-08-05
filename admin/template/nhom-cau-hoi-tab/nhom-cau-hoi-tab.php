<?php
    $rows = $acc->getList("nhom_cau_hoi_tab","giao_trinh_tab_phu_id",$_GET['giao_trinh_tab_phu_id'],"id","asc",$trang, 20, "nhom-cau-hoi-tab");//var_dump($rows);
    $giao_trinh_tab_phu = $action->getDetail('giao_trinh_tab_phu', 'id', $_GET['giao_trinh_tab_phu_id']);
    $giao_trinh_tab_chinh_id = $giao_trinh_tab_phu['giao_trinh_tab_chinh_id'];
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-cau-hoi-tab&giao_trinh_tab_phu_id=<?= $_GET['giao_trinh_tab_phu_id'] ?>">Thêm nhóm câu hỏi tab</a></h1>
        <a href="index.php?page=giao-trinh-tab-phu&giao_trinh_tab_chinh_id=<?= $giao_trinh_tab_chinh_id ?>" title="">Quay lại</a>
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
                            
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-cau-hoi-tab&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-cau-hoi-tab&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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