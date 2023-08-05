<?php 
    $list_trac_nghiem = $action->getList('bai_trac_nghiem', 'bai_hoc_id', $_GET['trang'], 'id', 'asc', '', '', '');
    $bai_hoc = $action->getDetail('bai_hoc', 'id', $_GET['trang']);
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
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-single-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-9 gb-single-blog_ruouvang-right">        
                <div class="gb-single-blog_ruouvang-right-title">
                    <h1>Bài tập trắc nghiệm <?= $bai_hoc['name'] ?></h1>
                </div>                
                <div class="gb-single-blog_ruouvang-right-text">
                        <?php 
                        $d = 0;
                        foreach ($list_trac_nghiem as $item) { 
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

                </div>

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

                <!-- Cấp độ khác-->
                <?php include DIR_PRODUCT."MS_PRODUCT_HOC_0021_2.php";?>

            </div>
            <div class="col-md-3 gb-blog-left">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
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
          xhttp.open("GET", "/functions/ajax/tra_loi.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }
</script>