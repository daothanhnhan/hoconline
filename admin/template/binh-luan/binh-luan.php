<?php
    $rows = $acc->getList("binh_luan","","","id","desc",$trang, 20, "binh-luan");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <h1><a href="index.php?page=them-binh-luan">Thêm bình luận</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ tên</th>
                    <th>Bình luận</th>
                    <th>Thời gian</th>
                    <th>Hoạt động</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                        $user = $action->getDetail('user', 'user_id', $row['user_id']);
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $user['user_name']?></td>
                            <td><?= $row['note']?></td>
                            <td><?= $row['ngay']?></td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-binh-luan&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-binh-luan&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td>
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