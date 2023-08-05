<?php
    $rows = $acc->getList("bai_trac_nghiem","bai_hoc_id",$_GET['bai_hoc_id'],"id","asc",$trang, 20, "bai-trac-nghiem");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-bai-trac-nghiem&id=<?= $_GET['bai_hoc_id'] ?>">Thêm bài trắc nghiệm</a></h1>
        <a href="index.php?page=bai-cap-do" title="">Quay lại</a>
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
                            <td><?= $row['cau_1']?></td>
                            <td><?= $row['cau_2']?></td>
                            <td><?= $row['cau_3']?></td>
                            <td><?= $row['cau_4']?></td>
                            <td><?= $row['dap_an']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-bai-trac-nghiem&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-bai-trac-nghiem&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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