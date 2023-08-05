<?php
    $rows = $acc->getList("nhom_de_thi","de_thi_trac_nghiem_id",$_GET['de_thi_trac_nghiem_id'],"id","asc",$trang, 20, "nhom-de-thi");//var_dump($rows);
    $de_thi_trac_nghiem = $acc->getDetail('de_thi_trac_nghiem', 'id', $_GET['de_thi_trac_nghiem_id']);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-de-thi&de_thi_trac_nghiem_id=<?= $_GET['de_thi_trac_nghiem_id'] ?>">Thêm nhóm đề thi trắc nghiệm</a></h1>
        <a href="index.php?page=de-thi-trac-nghiem&product_id=<?= $de_thi_trac_nghiem['product_id'] ?>" title="">Quay lại</a>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên nhóm</th>
                    <th>Câu trắc nghiệm</th>
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
                            <td><a href="index.php?page=cau-de-thi&nhom_de_thi_id=<?= $row['id'] ?>" title="">Câu trắc nghiệm</a></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-de-thi&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-de-thi&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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