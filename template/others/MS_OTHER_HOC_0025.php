<?php 
    unset($_SESSION['luu_de_thi']);
    unset($_SESSION['tra_loi_de_thi']);
    unset($_SESSION['luu_de_thi_id']);
    // $list_trac_nghiem = $action->getList('bai_trac_nghiem', 'bai_hoc_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $list_nhom_de_thi = $action->getList('nhom_de_thi', 'de_thi_trac_nghiem_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $de_thi = $action->getDetail('de_thi', 'id', $_GET['trang']);
    $user_info = array();
    $vip = 0;
    if (isset($_SESSION['user_id_gbvn'])) {
        $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
        if ($user_info['vip'] == 1) {
            $vip = 1;
        }
    }
    unset($_SESSION['ket_qua']);
?>
<style>

</style>
<style>

</style>
<style>

</style>
<script>
$(window).scroll(function(){
  var sticky = $('#ket-qua'),
      scroll = $(window).scrollTop();

  if (scroll >= 200) sticky.addClass('ket-qua-1');
  else sticky.removeClass('ket-qua-1');
});
</script>

<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-single-blog_ruouvang">
    <div class="container">
        <div class="row info_dethi">
            <div class="col-xs-4">
                Tên User: <?= $user_info['user_name'] ?>
            </div>
            <div class="col-xs-4">
                Thời gian: <span id="count_time" style="display: <?= $de_thi['count_time']==0 ? 'none' : ''; ?>"></span>
            </div>
            <div class="col-xs-4">
                Lưu bài: <button type="button" style="display: <?= $vip==0 ? 'none' : ''; ?>;color:#000" onclick="luu_de_thi(<?= $user_info['user_id'] ?>, <?= $_GET['trang'] ?>)">Lưu</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 gb-single-blog_ruouvang-right">        
                
                    <!-- <h1>Bài tập trắc nghiệm cấp độ 1</h1> -->
                    <?php 
                        $count = 0;
                        foreach ($list_nhom_de_thi as $item_nhom) { 
                            $list_cau_de_thi = $action->getList('cau_de_thi', 'nhom_de_thi_id', $item_nhom['id'], 'id', 'asc', '', '', '');
                        ?>
                <div class="gb-single-blog_ruouvang-right-title">
                        <p class="nhom"><?= $item_nhom['name'] ?></p>
                </div>                
                <div class="gb-single-blog_ruouvang-right-text">
                        <?php 
                            $d = 0;
                            foreach ($list_cau_de_thi as $item) { 
                                $count++;
                                $d++;
                                $text=str_ireplace('<p>','',$item['name']);
                                $text=str_ireplace('</p>','',$text);
                            ?>
                            <div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>
                            </div>
                            <?php } ?>

                            <p class="btn_dapan1 nhom-text-dap-an-dich" onclick="dap_an(<?= $item_nhom['id'] ?>)"><span>CLICK VÀO ĐÂY ĐỂ XEM ĐÁP ÁN</span>
                                <!-- <img src="/images/click_here_2.png" width="150px" alt=""> -->
                            </p>

                            <div class="slide-content" style="display: none;" id="dap-an-nhom-<?= $item_nhom['id'] ?>">
                                <p></p>
                                <table class="khung-listhantu" cellspacing="0" style="width: 100%;">
                                    <tbody>
                                        <tr><td>STT</td><th>Câuhỏi</th><th>Câu Đúng</th><th>Hướng dẫn</th></tr>
                                        <?php 
                                        $d = 0;
                                        foreach ($list_cau_de_thi as $item) { 
                                            $d++;
                                            $text=str_ireplace('<p>','',$item['name']);
                                            $text=str_ireplace('</p>','',$text);
                                            $dap_an = $item['cau_'.$item['dap_an']];
                                        ?>
                                        <tr>
                                            <td><?= $d ?></td>
                                            <td class="jp"><?= $text ?></td>
                                            <td class="jp"><?= $dap_an ?></td>
                                            <td>
                                                <p><span class="cauhoi-dich">Dịch:</span><br><br><span class="cauhoi-caudich"><?= $item['dich'] ?></span></p>
                                            </td>
                                        </tr>
                                        <?php } ?>                                        
                                    </tbody>
                                </table>
                                <p></p>
                            </div>
                            

                </div>
                <?php } ?>
                <div class="gb-single-blog_ruouvang-share">
                    <div class="row">
                        <div class="col-md-5 gb-single-blog_ruouvang-share-left">
                            <!-- <ul>
                                <li><a href="#">Finance</a></li>
                                <li><a href="#">Business</a></li>
                                <li><a href="#">Photo</a></li>
                            </ul> -->
                        </div>
                        <div class="col-md-5 col-md-offset-2 gb-single-blog_ruouvang-share-right">
                            <ul>
                                <li><span><i class="fa fa-share-alt" aria-hidden="true"></i> share</span></li>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Lớp học liên quan-->
                <?php include DIR_PRODUCT."MS_PRODUCT_HOC_0021.php";?>

            </div>
            <div class="col-md-3 gb-blog-left">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
            </div>
        </div>
    </div>
</div>

<div id="ket-qua">
    <table style="">
        <tbody><tr>
            <td>Tổng số câu hỏi:</td>
            <td><span id="ans-total" style="opacity: 1;"><?= $count ?></span></td>
        </tr>
        <tr>
            <td>Số câu đã chọn:</td>
            <td><span id="ans-finish" style="opacity: 1;">0</span></td>
        </tr>
        <tr>
            <td>Số câu sai:</td>
            <td><span id="ans-wrong" style="opacity: 1;">0</span></td>
        </tr>
        <tr>
            <td style="">Tổng điểm:</td>
            <td><span id="ans-score" style="opacity: 1;">0</span></td>
        </tr>
    </tbody>
</table>
</div>

<script>
    function check_cau_tra_loi (cau_so, chon, stt) {
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
                ket_qua(<?= $count ?>);
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_de_thi.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }

    function ket_qua (tong_cau) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("ket-qua").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_de_thi_ket_qua.php?tong_cau="+tong_cau, true);
          xhttp.send();
    }

    function dap_an (nhom_id) {
        // alert(nhom_id);
        var an_hien = document.getElementById("dap-an-nhom-"+nhom_id).style.display;
        // alert(an_hien);
        if (an_hien == 'none') {
            document.getElementById("dap-an-nhom-"+nhom_id).style.display = 'block';
        } else {
            document.getElementById("dap-an-nhom-"+nhom_id).style.display = 'none';
        }
    }

    function luu_de_thi (user_id, de_thi_id) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            // document.getElementById("demo").innerHTML = this.responseText;
                alert('Bạn đã lưu thành công.');
            }
          xhttp.open("GET", "/functions/ajax/luu_de_thi.php?user_id="+user_id+"&de_thi_id="+de_thi_id, true);
          xhttp.send();
    }
</script>

<script>
// Set the date we're counting down to
// var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();
var countDownDate = 1 * 60 * 60 * 1000;
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
  document.getElementById("count_time").innerHTML = hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "Hết giờ";
  }
}, 1000);
</script>

<script></script>