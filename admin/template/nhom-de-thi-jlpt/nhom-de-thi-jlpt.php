<?php
    $rows = $acc->getList("nhom_de_thi_jlpt","de_thi_jlpt_id",$_GET['de_thi_jlpt_id'],"id","asc",$trang, 20, "nhom-de-thi-jlpt");//var_dump($rows);
    $de_thi_jlpt = $action->getDetail('de_thi_jlpt', 'id', $_GET['de_thi_jlpt_id']);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-nhom-de-thi-jlpt&id=<?= $_GET['de_thi_jlpt_id'] ?>">Thêm nhóm đề thi JLPT</a></h1>
        <a href="index.php?page=de-thi-jlpt&product_id=<?= $de_thi_jlpt['product_id'] ?>" title="">Quay lại</a>
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
                            <td><a href="index.php?page=cau-de-thi-jlpt&nhom_de_thi_jlpt_id=<?= $row['id'] ?>" title="">Câu trắc nghiệm</a></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-nhom-de-thi-jlpt&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-nhom-de-thi-jlpt&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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