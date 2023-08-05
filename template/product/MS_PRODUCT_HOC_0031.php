<?php 
    $nhom_cau_do_name = $action->getDetail('nhom_cau_do', 'id', $_GET['trang'])['name'];//var_dump($nhom_cau_do_name);
	$list_cau_do = $action->getList('cau_cau_do', 'nhom_cau_do_id', $_GET['trang'], 'id', 'asc', '', '', '');
	$count = count($list_cau_do);
    $so_trang = ceil($count/3);//var_dump($so_trang);
    
	if (isset($_GET['search'])) {
		$list_cau_do_limit = $action->getList('cau_cau_do', 'nhom_cau_do_id', $_GET['trang'], 'id', 'asc', $_GET['search'], '3', '');
	}
    // var_dump($_SESSION['cau_sai']);
    $cau_sai = 0;
    function cau_sai () {
        global $cau_sai;
        if (!isset($_SESSION['cau_sai'])) {
            $cau_sai = 0;
        } else {
            $sai = 0;
            foreach ($_SESSION['cau_sai'] as $item) {
                foreach ($item as $val) {
                    if ($val == 1) {
                        $sai++;
                    }
                }
            }
            $cau_sai = $sai;
        }
    }
    cau_sai();

    function ket_qua_kiem_tra ($ten_nhom_cau_do, $count) {
        global $conn_vn;
        $ngay = date('Y-m-d H:i:s');
        $user_id = $_SESSION['user_id_gbvn'];

        $sql = "INSERT INTO ket_qua_kiem_tra (name, ngay, tong, dung, user_id) VALUES ('$ten_nhom_cau_do', '$ngay', '$count', '0', '$user_id')";
        $result = mysqli_query($conn_vn, $sql);
        $_SESSION['ket_qua_kiem_tra_id'] = mysqli_insert_id($conn_vn);
    }

    $user_cau_do = $action->getList('user', '', '', 'cau_do_diem', 'desc', '', '10', '');
?>
<style>
.cau-do .bang-xep-hang ul li {
    line-height: 20px;
}
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="container cau-do">
	<div class="row">
		<?php 
        if (!isset($_GET['search'])) { 
            if (isset($_SESSION['user_id_gbvn'])) {
                ket_qua_kiem_tra($nhom_cau_do_name, $count);
            }
        ?>
            <div class="col-md-3 bang-xep-hang">
                <p style="text-transform: uppercase;font-weight: bold;">Bảng xếp hạng</p>
                <ul>
                    <?php 
                    $d = 0;
                    foreach ($user_cau_do as $item) { 
                        $d++;
                    ?>
                    <li><?= $d ?>. <?= $item['user_name'] ?></li>
                    <?php } ?>
                </ul>
            </div>
            <div class="col-md-9">
                <table class="table table-bordered">
                    <tbody>
                      <tr>
                        <td>Tổng số câu hỏi</td>
                        <td><?= $count ?></td>
                      </tr>
                      <tr>
                        <td>Thời gian 1 câu</td>
                        <td>15 giây</td>
                      </tr>
                      <tr>
                        <td>Số câu sai cho phép</td>
                        <td>2</td>
                      </tr>
                    </tbody>
                </table>
                <a href="/nhom-cau-do/<?= $_GET['trang'] ?>/1" title="" class="lam-bai">Làm bài</a>
            </div>
			
		<?php } else { ?>
            <div>
                <p>thời gian còn lại:
                <span id="count_time" style="">00:45</span></p>
            </div>
            <div>
                <p>Số câu sai: <span id="cau_sai" style=""><?= $cau_sai ?></span></p>
            </div>
            <div id="show-result">
			<?php 
            $d = 0;
            $next = $_GET['search'] + 1;
            foreach ($list_cau_do_limit['data'] as $item) { 
                $d++;
                $text=str_ireplace('<p>','',$item['cau_hoi']);
                $text=str_ireplace('</p>','',$text);

                $cau_1 = '';
                $cau_2 = '';
                $cau_3 = '';
                $cau_4 = '';

                // if ($hoan_thanh == 1) {
                //     dap_an($item['cau_dung'], $item['id']);
                // }
                
            ?>
            <div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_1 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_2 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_3 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                <span class="frame4"><span class="answer jp-22 <?= $cau_4 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>
            </div>
            
            <?php } ?>
            </div>
            
            <button type="button" onclick="hoan_thanh(<?= $_GET['trang'] ?>, <?= $_GET['search'] ?>)" class="button">Hoàn thành</button>
            <button type="button" id="xem-dap-an" style="display: none;" onclick="show_dich()" class="button">Xem đáp án</button>
            <?php if ($so_trang != $_GET['search']) { ?>
            <a href="/nhom-cau-do/<?= $_GET['trang'] ?>/<?= $next ?>" id="next-bai" style="display: none;" title="">Làm bài tiếp theo</a>
            <?php } ?>
		<?php } ?>
	</div>
</div>

<script>
// Set the date we're counting down to
// var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();
var countDownDate = 3 * 15 * 1000;
var distance = countDownDate;

// Update the count down every 1 second
var x = setInterval(function() {
// console.log('time');
  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  // var distance = countDownDate - now;
  // var distance--;
  distance = distance - 1000;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("count_time").innerHTML = "00:" + seconds + " ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("count_time").innerHTML = "Hết giờ";
    hoan_thanh(<?= $_GET['trang'] ?>, <?= $_GET['search'] ?>)
  }
}, 1000);
</script>

<script>
    function check_cau_tra_loi (cau_so, chon, stt) {
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_cau_do.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }

    function hoan_thanh (nhom, trang) {
        // alert();
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("show-result").innerHTML = this.responseText;
                $('#xem-dap-an').show();
                
                clearInterval(x);
                cau_sai();
            }
          xhttp.open("GET", "/functions/ajax/dap_an_cau_do.php?nhom="+nhom+"&trang="+trang, true);
          xhttp.send();
    }

    function show_dich () {
        $('.dich-cau-do').show();
        $('#xem-dap-an').hide();
    }

    function cau_sai () {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            var so_cau_sai = this.responseText
            document.getElementById("cau_sai").innerHTML = so_cau_sai;
                if (so_cau_sai <= 2) {
                    $('#next-bai').show();
                }
            }
          xhttp.open("GET", "/functions/ajax/cau_sai.php", true);
          xhttp.send();
    }
</script>