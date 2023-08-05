<?php
    if (isset($_GET['search']) && $_GET['search'] != '') {
        $rows = $action->getSearchAdmin('user',array('user_name','user_email'), $_GET['search'],$trang,10,$_GET['page']);
    }else{
       
        $rows = $acc->getList("user","","","","asc",$trang, 10, "tai-khoan-user");
    }
    


?>	
    <div class="boxPageNews">
    	<div class="searchBox">
            <form action="">
                <input type="hidden" name="page" value="tai-khoan-user">
            	<button type="submit" class="btnSearchBox" name="">Tìm kiếm</button>
                <input type="text" class="txtSearchBox" name="search" />                	                
            </form>
        </div>
        <h1><a href="index.php?page=them-tai-khoan-user" title="">Thêm tại khoản khách hàng</a></h1>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Tên tài khoản</th>
                    <th>Email</th>
                    <th>Ngày khởi tạo</th>
                    <th>Ngày kết thúc</th>
                    <th>VIP</th>
                    <th>Hoạt động</th>
                    <th>Gửi thông báo</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    foreach ($rows['data'] as $row) {
                    ?>
                        <tr>
                            <td><a href="javascrip:void(0)" title=""><?= $row['user_name']; ?></a></td>
                            <td><?= $row['user_email']?></td>
                            <td>
                               <!--  <?php 
                                    $acc = new action_account("VN");
                                    $rowRole = $acc->getDetail("admin_role","admin_role_id",$row['admin_role']);
                                    echo $rowRole['admin_role_name'];
                                ?> -->
                                <?= date('d-m-Y H:m:s', strtotime($row['time'])); ?>
                            </td>
                            <td><?= $row['expiration_date'] ?></td>
                            <td><input type="checkbox" name="" <?= $row['vip']==1 ? 'checked' : '' ?> onclick="check_vip(<?= $row['user_id'] ?>)"></td>
                            <!-- <td><?= $row['admin_state'] == 1 ? 'Hoạt động' : 'Khóa'?></td> -->
                            <td style="float: none;"><a href="index.php?page=xoa-tai-khoan-user&id=<?= $row['user_id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-tai-khoan-user&id=<?= $row['user_id'] ?>" style="float: none;">Sửa</a></td>
                            <td><a href="index.php?page=gui-thong-bao&user_id=<?= $row['user_id'] ?>" title="">Thông báo</a></td>
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
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ GoldBridge Việt Nam</p>             

<script>
    function check_vip (user_id) {
        // alert(user_id)
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/check_vip.php?user_id="+user_id, true);
          xhttp.send();
    }
</script>