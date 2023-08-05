<?php
    $rows = $acc->getList("cau_hoi_tab","giao_trinh_tab_phu_id",$_GET['giao_trinh_tab_phu_id'],"id","asc",$trang, 20, "cau-hoi-tab");//var_dump($rows);
    $giao_trinh_tab_phu = $action->getDetail('giao_trinh_tab_phu', 'id', $_GET['giao_trinh_tab_phu_id']);
    $giao_trinh_tab_chinh_id = $giao_trinh_tab_phu['giao_trinh_tab_chinh_id'];
    include_once 'codesale.php';
?>	

    <div class="boxPageNews">
        <h1><a href="index.php?page=them-cau-hoi-tab&giao_trinh_tab_phu_id=<?= $_GET['giao_trinh_tab_phu_id'] ?>">Thêm câu hỏi tab</a></h1>
        <a href="index.php?page=giao-trinh-tab-phu&giao_trinh_tab_chinh_id=<?= $giao_trinh_tab_chinh_id ?>" title="">Quay lại</a>
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
                    <th>Sắp xếp</th>
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
                            <td style="float: none;"><a href="index.php?page=xoa-cau-hoi-tab&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-cau-hoi-tab&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
                            <!-- <td><a href="index.php?page=giao-trinh-bai-cau-hoi&giao_trinh_bai_id=<?= $row['id'] ?>" title="">Câu hỏi</a></td> -->
                            <td><?= $row['sort'] ?></td>
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