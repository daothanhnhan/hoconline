<?php
    $rows = $acc->getList("giao_trinh_tab_phu","giao_trinh_tab_chinh_id",$_GET['giao_trinh_tab_chinh_id'],"id","asc",$trang, 20, "giao-trinh-tab-phu");//var_dump($rows);
    $giao_trinh_tab_chinh = $action->getDetail('giao_trinh_tab_chinh', 'id', $_GET['giao_trinh_tab_chinh_id']);
    $giao_trinh_chinh_bai_id = $giao_trinh_tab_chinh['giao_trinh_chinh_bai_id'];
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-giao-trinh-tab-phu&giao_trinh_tab_chinh_id=<?= $_GET['giao_trinh_tab_chinh_id'] ?>">Thêm giáo trình tab phu</a></h1>
        <a href="index.php?page=giao-trinh-tab-chinh&giao_trinh_chinh_bai_id=<?= $giao_trinh_chinh_bai_id ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <!-- <th>Ảnh</th> -->
                    <th>Hoạt động</th>
                    <th>Nội dung</th>
                    <th>Câu hỏi</th>
                    <th>Phiên âm</th>
                    <th>Phiên âm nghe</th>
                    <th>Điền từ</th>
                    <th>Nhóm</th>
                    <th>Tab con</th>
                    <!-- <th>Nhóm câu hỏi</th> -->
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
                            <td style="float: none;"><a href="index.php?page=xoa-giao-trinh-tab-phu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-giao-trinh-tab-phu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <td><a href="index.php?page=noi-dung-tab-phu&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Nội dung</a></td>
                            <td><a href="index.php?page=cau-hoi-tab&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Câu hỏi</a></td>
                            <td><a href="index.php?page=phien-am&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Phiên âm</a></td>
                            <td><a href="index.php?page=phien-am-nghe&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Phiên âm nghe</a></td>
                            <td><a href="index.php?page=dien-tu&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Điền từ</a></td>
                            <td><a href="index.php?page=nhom-dien-tu&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Nhóm</a></td>
                            <td><a href="index.php?page=tab-con&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Tab con</a></td>
                            <!-- <td><a href="index.php?page=nhom-cau-hoi-tab&giao_trinh_tab_phu_id=<?= $row['id'] ?>" title="">Nhóm câu hỏi</a></td> -->
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