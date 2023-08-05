<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<?php 
    // $list_bai_hoc = $action->getList('bai_hoc_cap_do', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');
    $list_giao_trinh_chinh = $action->getList('giao_trinh_chinh', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');
    $list_giao_trinh = $action->getList('giao_trinh', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');
    $list_de_thi_jlpt = $action->getList('de_thi_jlpt', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');
    $list_nhom_cau_do = $action->getList('nhom_cau_do', 'product_id', $row['product_id'], 'id', 'asc', '', '', '');
?>
<style>
fieldset {
    display: block;
    margin-inline-start: 2px;
    margin-inline-end: 2px;
    padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;
    min-inline-size: min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
}
legend {
    width: auto;
    font-size: 25px;
}


</style>
<div class="gb-single-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-9 gb-single-blog_ruouvang-right">        
                <div class="gb-single-blog_ruouvang-right-title">
                    <h1><?= $row['product_name'] ?></h1>
                </div>      
                <div>
                    <div class="muc-chinh" style="">
                        <p>I. Giáo trình chính</p>
                    </div>
                        <table>
                            <?php 
                            $d = 0;
                            foreach ($list_giao_trinh_chinh as $item) { 
                                $d++;
                                ?>
                            <tr>
                                <td>I.<?= $d ?></td>
                                <td><a href="/giao-trinh-chinh/<?= $item['id'] ?>" title=""><i class="fa fa-folder-open"></i> <?= $item['name'] ?></a></td>
                            </tr>
                            <?php } ?>
                        </table>
                </div>
                <div style="display: none;">
                    <p style="font-size: 25px;">Giáo trình</p>
                    <?php foreach ($list_giao_trinh as $item) { ?>
                    <p style="padding: 4px;margin-bottom: 2px;"><a href="/giao-trinh-cac-bai/<?= $item['id'] ?>" title=""><?= $item['name'] ?></a></p>
                    <?php } ?>
                </div>

                <div>
                    <div class="muc-chinh" style="">
                        <p>II. Các đề luyện thi</p>
                    </div>
                        <table>
                            <tr>
                                <td>II.1</td>
                                <td><a href="/danh-sach-de-thi-jlpt/<?= $row['product_id'] ?>"><i class="fa fa-folder-open"></i> Đề thi JLPT</a></td>
                            </tr>
                            <tr>
                                <td>II.2</td>
                                <td><a href="/danh-sach-de-thi-trac-nghiem/<?= $row['product_id'] ?>"><i class="fa fa-folder-open"></i> Đề luyện thi trắc nghiệm</a></td>
                            </tr>
                            <tr>
                                <td>II.3</td>
                                <td><a href="/danh-sach-luyen-nghe/<?= $row['product_id'] ?>"><i class="fa fa-folder-open"></i> Luyện nghe</a></td>
                            </tr>
                        </table>
                </div>

                <div>
                    <div class="muc-chinh" style="">
                        <p>III. Câu đố</p>
                    </div>
                        <table>
                            <?php 
                            $d = 0;
                            foreach ($list_nhom_cau_do as $item) { 
                                $d++;
                                ?>
                            <tr>
                                <td>III.<?= $d ?></td>
                                <td><a href="/nhom-cau-do/<?= $item['id'] ?>" title=""><i class="fa fa-folder-open"></i> <?= $item['name'] ?></a></td>
                            </tr>
                            <?php } ?>
                        </table>
                </div>
                      
                <hr>
                <div class="gb-single-blog_ruouvang-right-text">
                    <?= $row['product_content'] ?>                            
                </div>

                <div class="btn_tracnghiem" style="display: none;">
                    <div class="row">
                        <div class="col-md-12">
                            <?php if ($row['product_id'] == 261) { ?>
                            <a href="/bai-trac-nghiem/1">
                            <?php } ?>
                            <?php if ($row['product_id'] == 264) { ?>
                            <a href="/bai-trac-nghiem/2">
                            <?php } ?>
                            <?php if ($row['product_id'] == 266) { ?>
                            <a href="/bai-trac-nghiem/3">
                            <?php } ?>
                            <?php if ($row['product_id'] == 268) { ?>
                            <a href="/bai-trac-nghiem/4">
                            <?php } ?>
                            <?php if ($row['product_id'] == 269) { ?>
                            <a href="/bai-trac-nghiem/5">
                            <?php } ?>
                                <p style="margin-bottom: 10px;">THỰC HIỆN BÀI TRẮC NGHIỆM</p>
                                <img width="150px" src="/images/click_here_2.png" alt="">
                            </a>
                        </div>                        
                    </div>
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
                <!-- binh luan -->
                <?php include DIR_EMAIL."MS_EMAIL_HOC_0001.php";?>

            </div>
            <div class="col-md-3 gb-blog-left">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0001.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
            </div>
        </div>
    </div>
</div>