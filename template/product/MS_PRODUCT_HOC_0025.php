<?php 
	$giao_trinh_bai = $action->getDetail('giao_trinh_bai', 'id', $_GET['trang']);
	$list_cau_hoi_giao_trinh = $action->getList('giao_trinh_bai_cau_hoi', 'giao_trinh_bai_id', $giao_trinh_bai['id'], 'id', 'asc', '', '', '');
    $count = count($list_cau_hoi_giao_trinh);
    unset($_SESSION['ket_qua']);
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
<style>
#ket-qua {
    position: fixed;
    right: 10px;
    top: 200px;
    box-shadow: 0 0 10px rgb(0 0 0 / 50%);
        z-index: 1;
    background: rgba(237,243,247,.8);
    padding: 5px;
    border: 1px solid #ddd;
    font-weight: 700;
}
#ket-qua table td {
    border: 0;
}
.ket-qua-1 {
    top: 100px !important;
}
</style>
<script>
$(window).scroll(function(){
  var sticky = $('#ket-qua'),
      scroll = $(window).scrollTop();

  if (scroll >= 200) sticky.addClass('ket-qua-1');
  else sticky.removeClass('ket-qua-1');
});
</script>
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
<div class="container">
	<div class="row">
		<h1 style="font-size: 24px;text-align: center;font-weight: bold;"><?= $giao_trinh_bai['name'] ?></h1>
        <?php if ($giao_trinh_bai['show_img']==1) { ?>
		<img src="/images/<?= $giao_trinh_bai['image'] ?>" alt="<?= $giao_trinh_bai['name'] ?>" width="100%">
        <?php } ?>
		<div>
			<p>Nội dung</p>
			<div>
				<?= $giao_trinh_bai['content'] ?>
			</div>
			<p>Luyện thi</p>
			<div>
				<?php 
                            $d = 0;
                            foreach ($list_cau_hoi_giao_trinh as $item) { 
                                $d++;
                                $text=str_ireplace('<p>','',$item['cau_hoi']);
                                $text=str_ireplace('</p>','',$text);
                            ?>
                            <div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_tra_loi_giao_trinh(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_tra_loi_giao_trinh(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_tra_loi_giao_trinh(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_tra_loi_giao_trinh(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>
                            </div>
                            <?php } ?>

                <p class="btn_dapan" onclick="dap_an()">CLICK VÀO ĐÂY ĐỂ XEM ĐÁP ÁN <br>
                                <img src="/images/click_here_2.png" width="150px" alt="">
                            </p>

                <div class="slide-content" style="display: none;" id="dap-an-bai-giao-trinh">
                                <p></p>
                                <table class="khung-listhantu" cellspacing="0" style="width: 100%;">
                                    <tbody>
                                        <tr>
                                        	<td>STT</td>
                                        	<th>Đáp án</th>
                                        	<th>Dịch</th>
                                        	
                                        	</tr>
                                        <?php 
                                        $d = 0;
                                        foreach ($list_cau_hoi_giao_trinh as $item) { 
                                            $d++;
                                            // $text=str_ireplace('<p>','',$item['name']);
                                            // $text=str_ireplace('</p>','',$text);
                                            // $dap_an = $item['cau_'.$item['dap_an']];
                                        ?>
                                        <tr>
                                            <td><?= $d ?></td>
                                            <td class="jp"><?= $item['dap_an'] ?></td>
                                            <td class="jp"><?= $item['dich'] ?></td>
                                            
                                        </tr>
                                        <?php } ?>                                        
                                    </tbody>
                                </table>
                                <p></p>
                            </div>
                                        
			</div>
		</div>
	</div>
</div>

<script>
    function check_cau_tra_loi_giao_trinh (cau_so, chon, stt) {
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
                ket_qua(<?= $count ?>);
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_cau_giao_trinh.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }

    function dap_an () {
        // alert('sj');
        var an_hien = document.getElementById("dap-an-bai-giao-trinh").style.display;
        // alert(an_hien);
        if (an_hien == 'none') {
            document.getElementById("dap-an-bai-giao-trinh").style.display = 'block';
        } else {
            document.getElementById("dap-an-bai-giao-trinh").style.display = 'none';
        }
    }

    function ket_qua (tong_cau) {
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("ket-qua").innerHTML = this.responseText;
            }
          xhttp.open("GET", "/functions/ajax/tra_loi_cau_giao_trinh_ket_qua.php?tong_cau="+tong_cau, true);
          xhttp.send();
    }
</script>