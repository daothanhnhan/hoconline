<?php 
	// $list_nhom_de_thi = $action->getList('nhom_thi_nghe', 'de_thi_jlpt_id', $_GET['trang'], 'id', 'asc', '', '', '');//var_dump($list_nhom_de_thi);
    // $de_thi = $action->getDetail('de_thi_jlpt', 'id', $_GET['trang']);
    // var_dump($_SESSION['tra_loi_de_thi_jlpt']);

	$list_cau_de_thi = $action->getList('cau_luyen_nghe', 'nhom_luyen_nghe_id', $_GET['trang'], 'id', 'asc', '', '', '');
	$nhom_luyen_nghe = $action->getDetail('nhom_luyen_nghe', 'id', $_GET['trang']);

    $hoan_thanh = 0;
    if (isset($_GET['search']) && $_GET['search']=='hoan-thanh') {
        $hoan_thanh = 1;
    } else {
        unset($_SESSION['tra_loi_de_thi_jlpt']);
    }

    function dap_an ($dap_an, $cau_so) {
        global $cau_1;
        global $cau_2;
        global $cau_3;
        global $cau_4;

        $chon = 0;
        foreach ($_SESSION['tra_loi_de_luyen_nghe'] as $key => $val) {
            if ($val[0] == $cau_so) {
                $chon = $_SESSION['tra_loi_de_luyen_nghe'][$key][1];
            }
        }

        if ($chon == $dap_an) {
         if ($dap_an == 1) {
             $cau_1 = 'dung';
         }
         if ($dap_an == 2) {
             $cau_2 = 'dung';
         }
         if ($dap_an == 3) {
             $cau_3 = 'dung';
         }
         if ($dap_an == 4) {
             $cau_4 = 'dung';
         }
        } else {
         if ($dap_an == 1) {
             $cau_1 = 'dung';
         }
         if ($dap_an == 2) {
             $cau_2 = 'dung';
         }
         if ($dap_an == 3) {
             $cau_3 = 'dung';
         }
         if ($dap_an == 4) {
             $cau_4 = 'dung';
         }

         if ($chon == 1) {
             $cau_1 = 'sai';
         }
         if ($chon == 2) {
             $cau_2 = 'sai';
         }
         if ($chon == 3) {
             $cau_3 = 'sai';
         }
         if ($chon == 4) {
             $cau_4 = 'sai';
         }
        }
    }
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
<div class="container">
<div class="row">

            <div class="col-md-12 gb-single-blog_ruouvang-right">    
              <!-- <p>Thời gian: <span id="count_time"></span></p> -->
                <!-- <button type="button"><a href="/bai-luyen-nghe/<?= $_GET['trang'] ?>/hoan-thanh">Hoàn thành</a></button> -->
                <!-- <div>
                    <audio controls>
                      <source src="horse.ogg" type="audio/ogg">
                      <source src="/images/mp3/<?= $nhom_luyen_nghe['mp3'] ?>" type="audio/mpeg">
                    Your browser does not support the audio element.
                    </audio>
                </div> -->    
                <div class="gb-single-blog_ruouvang-right-title">
                    <!-- <h1>Bài tập trắc nghiệm cấp độ 1</h1> -->
                    
                </div>                
                <div class="gb-single-blog_ruouvang-right-text">
                        <?php 
                            $d = 0;
                            foreach ($list_cau_de_thi as $item) { 
                                $d++;
                                $text=str_ireplace('<p>','',$item['cau_hoi']);
                                $text=str_ireplace('</p>','',$text);

                                $cau_1 = '';
                                $cau_2 = '';
                                $cau_3 = '';
                                $cau_4 = '';

                                if ($hoan_thanh == 1) {
                                    dap_an($item['cau_dung'], $item['id']);
                                }
                                
                            ?>
                            <div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                                <div>
                                    <audio controls>
                                      <source src="horse.ogg" type="audio/ogg">
                                      <source src="/images/mp3/<?= $item['mp3'] ?>" type="audio/mpeg">
                                    Your browser does not support the audio element.
                                    </audio>
                                </div>
                                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                                <span class="frame4"><span class="answer jp-22 <?= $cau_1 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22 <?= $cau_2 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22 <?= $cau_3 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22 <?= $cau_4 ?>" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_tra_loi(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>
                            </div>
                            <?php if (!empty($item['dap_an'])) { ?>
                            <p class="con-tro nhom-text-dap-an-dich" onclick="dap_an(<?= $item['id'] ?>)"><span>Click xem đáp án</span></p>
                            <?php } ?>
                            <div id="bai-luyen-nghe-<?= $item['id'] ?>" style="display: none;">
                              <?= $item['dap_an'] ?>
                            </div>
                            <?php } ?>

                </div>

                
        </div>
</div>
<div id="ket-qua" style="display: <?= $hoan_thanh==1 ? 'none' : 'block'; ?>">
<table style="">
    <tbody><tr>
      <td>Thời gian còn lại:</td>
      <td><span id="count_time">0</span></td>
    </tr>
    <tr>
      <td>Số câu hỏi còn lại:</td>
      <td><span id="testRemain"><?= $d ?></span></td>
    </tr>
  </tbody></table>
  <a href="/bai-luyen-nghe/<?= $_GET['trang'] ?>/hoan-thanh" id="testFinish" class="button">Hoàn thành</a>
</div>
<script>
    function check_cau_tra_loi (cau_so, chon, stt) {
    	<?php if ($hoan_thanh == 1) { ?>
        return false;
      	<?php } ?>
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
              so_cau_chon(<?= $d ?>);
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_cau_luyen_nghe.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }

    function dap_an (id) {
        // alert(nhom_id);
        var an_hien = document.getElementById("bai-luyen-nghe-"+id).style.display;
        // alert(an_hien);
        if (an_hien == 'none') {
            document.getElementById("bai-luyen-nghe-"+id).style.display = 'block';
        } else {
            document.getElementById("bai-luyen-nghe-"+id).style.display = 'none';
        }
    }

    function dap_an1 (nhom_id) {
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

    function so_cau_chon (tong) {
      const xhttp = new XMLHttpRequest();
      xhttp.onload = function() {
        document.getElementById("testRemain").innerHTML = this.responseText;
        }
      xhttp.open("GET", "/functions/ajax/tra_loi_cau_luyen_nghe_chon.php?tong="+tong, true);
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
    document.getElementById("count_time").innerHTML = "Hết giờ";
  }
}, 1000);
</script>

<script></script>