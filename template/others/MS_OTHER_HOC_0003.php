<?php 
    $list_trac_nghiem = $action->getList('bai_trac_nghiem', 'bai_hoc_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $list_nhom_de_thi = $action->getList('nhom_de_thi', 'de_thi_id', $_GET['trang'], 'id', 'asc', '', '', '');
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
<?php 
foreach ($list_nhom_de_thi as $item_nhom) { 
    $list_cau_de_thi = $action->getList('cau_de_thi', 'nhom_de_thi_id', $item_nhom['id'], 'id', 'asc', '', '', '');
?>
<p><?= $item_nhom['name'] ?></p>



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
<?php } ?>

<p style="cursor: pointer;" onclick="dap_an(<?= $item_nhom['id'] ?>)">Đáp án & Dịch</p>
<div class="slide-content" style="display: none;" id="dap-an-nhom-<?= $item_nhom['id'] ?>">
    <p></p>
    <table class="khung-listhantu" cellspacing="0">
        <tbody>
            <tr><td width="20">STT</td><th style="width: 300px;">Câuhỏi</th><th>Câu Đúng</th><th>Hướng dẫn</th></tr>
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
</script>