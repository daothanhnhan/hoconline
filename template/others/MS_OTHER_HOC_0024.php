<?php 
    unset($_SESSION['luu_de_thi']);
    unset($_SESSION['tra_loi_de_thi']);
    unset($_SESSION['luu_de_thi_id']);
    // $list_trac_nghiem = $action->getList('bai_trac_nghiem', 'bai_hoc_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $list_nhom_de_thi = $action->getList('luu_nhom_de_thi', 'luu_de_thi_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $de_thi = $action->getDetail('de_thi', 'id', $_GET['trang']);
    $user_info = array();
    $vip = 0;
    if (isset($_SESSION['user_id_gbvn'])) {
        $user_info = $action->getDetail('user', 'user_id', $_SESSION['user_id_gbvn']);
        if ($user_info['vip'] == 1) {
            $vip = 1;
        }
    }
?>
<style>
.cauhoi-wrap {
    padding: 10px!important;
}
.clearfix {
    zoom: 1;
}
.chanle {
    overflow: hidden;
    padding: 0 10px;
    border-bottom: 1px solid #eee;
}

.cauhoi.jp-22 {
    font-weight: 400;
    font-size: 23px;
}
.cauhoi {
    display: block;
    margin: 5px 0;
    overflow: hidden;
    font-weight: 700;
    color: #103b5c;
    font-size: 1.333em;
}
.jp-22 {
    font-family: MS PMincho,MS Mincho;
    font-size: 23px;
    line-height: 25px!important;
}

.frame4 {
    width: 50%;
    float: left;
    overflow: hidden;
    display: block;
    margin: 0;
}
.answer, .exameQuiz, .quizBaoloi {
    height: 20px;
    line-height: 20px;
    background-image: url(/images/icons/check.png);
    background-repeat: no-repeat;
    padding-left: 22px;
    cursor: pointer;
    color: #000;
    opacity: .6;
    -webkit-touch-callout: none;
    display: block;
    font-size: 1.333em;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    margin-bottom: 5px;
    float: left;
}
.jp-22.answer {
    font-size: 23px;
}
.dung {
    background-position-y: -60px;
}
.sai{
    background-position-y: -40px;
}
</style>
<style>
.slide-content {
    padding-left: 25px;
    display: none;
}
.khung-full th, .khung-listhantu tr:first-child, .khung-ngang th, .khungHanTu tr:first-child, .khungHanTu6C tr:first-child, .khungNote2C tr:first-child, .khungTuVung6C tr:first-child, .khunghantu_thugon tr:first-child {
    background: #2076b8;
    text-align: center;
    font-weight: 700;
    color: #fff!important;
}
.khung-base, .khung-base td, .khung-full, .khung-full td, .khung-full th, .khung-hoithoai, .khung-hoithoai td, .khung-listhantu, .khung-listhantu td, .khung-ngang, .khung-ngang td, .khungHanTu, .khungHanTu td, .khungHanTu6C, .khungHanTu6C td, .khungNote2C, .khungNote2C td, .khungNote2C th, .khungTuVung6C, .khungTuVung6C td, .khunghantu_thugon, .khunghantu_thugon td, .td_ht1, .td_ht1 td, .td_ht2, .td_ht2 td, .td_ht2 th, khung2 th {
    border-color: #cbe1f2;
    border-style: solid;
}
.khung-base td, .khung-full td, .khung-full th, .khung-hoithoai td, .khung-listhantu td, .khungHanTu td, .khungHanTu6C td, .khungNote2C td, .khungNote2C th, .khungTuVung6C td, .khunghantu_thugon td, .td_ht1 td, .td_ht2 td, .td_ht2 th {
    border-width: 0 0 1px 1px;
    padding: 5px 10px;
    vertical-align: middle;
}
.khung-listhantu tr td:nth-child(1) {
    width: 30px;
}
.khung-listhantu tr td:nth-child(1) {
    width: 30px;
}
.khung-listhantu tr:not(:first-child) td:nth-child(1), .khungTuVung6C tr:not(:first-child) td:nth-child(1) {
    font-weight: 700;
    text-align: center;
}
th {
    display: table-cell;
    vertical-align: middle;
    font-weight: bold;
    text-align: center;
}
</style>

<div class="gb-single-blog_ruouvang">
    <div class="container">
        
        <div class="row">
            <div class="col-md-12 gb-single-blog_ruouvang-right">        
                <div class="gb-single-blog_ruouvang-right-title">
                    <!-- <h1>Bài tập trắc nghiệm cấp độ 1</h1> -->
                    <?php 
                        foreach ($list_nhom_de_thi as $item_nhom) { 
                            $list_cau_de_thi = $action->getList('luu_cau_de_thi', 'luu_nhom_de_thi_id', $item_nhom['id'], 'id', 'asc', '', '', '');
                        ?>
                        <p><?= $item_nhom['name'] ?></p>
                </div>                
                <div class="gb-single-blog_ruouvang-right-text">
                        <?php 
                            $d = 0;
                            foreach ($list_cau_de_thi as $item) { 
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
                            <div>
                                Chọn: <?= $item['chon'] ?>
                            </div>
                            <?php } ?>

                            <p class="btn_dapan" style="display: none;"> onclick="dap_an(<?= $item_nhom['id'] ?>)">CLICK VÀO ĐÂY ĐỂ XEM ĐÁP ÁN <br>
                                <img src="/images/click_here_2.png" width="150px" alt="">
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
                            <?php } ?>

                </div>

                

                

            </div>
            
        </div>
    </div>
</div>

<script>
    function check_cau_tra_loi (cau_so, chon, stt) {
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_de_thi.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
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