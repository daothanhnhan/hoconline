<?php   
    // if (isset($_GET['slug']) && $_GET['slug'] != '') {
    //     $slug = $_GET['slug'];//echo 'tuan';die;                    
    //     $rowCatLang = $action_news->getNewsCatLangDetail_byUrl($slug,$lang);
    //     $rowCat = $action_news->getNewsCatDetail_byId($rowCatLang[$nameColIdNewsCat_newsCatLanguage],$lang);
    //     if (newsCatPageHasSub) {
    //         $rows = $action_news->getNewsList_byMultiLevel_orderNewsId($rowCat[$nameColId_newsCat],'desc',$trang,15,$slug);
    //     } else {
    //         $rows = $action_news->getNewsCat_byNewsCatIdParentHighest($rowCat[$nameColId_newsCat],'desc');//var_dump($rows);die;
    //     }        
    // }
    $rows = $action->getList('tai_lieu','','','id','asc',$trang,10,'tai-lieu', 'tai-lieu'); 
    // var_dump($rows);
?>
<style>
.entry-images {
    height: 40px;
    width: 4%;
    float: left;
    margin-top: 5px;
}
.entry-tile {
    margin: 0 0 5px 0px;
}
.entry-tile h3 a {
    font-size: 16px;
    line-height: 24px;
    color: #333;
    font-weight: 600;
    -webkit-transition: all 0.5s;
    -o-transition: all 0.5s;
    transition: all 0.5s;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 2;
    overflow: hidden;
}
.entry-date {
    /* padding: 2px 0px; */
    font-size: 11px;
    color: #7a7a7a;
}
.des-news-home {
    height: 49px;
    overflow-y: hidden;
}
.des-news-home {
    font-size: 14px;
    color: #000;
    font-style: italic;
    margin-top: 3px;
    line-height: 1.6;
}
.entry-images img {
    width: 100%;
}
</style>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-page-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p style="margin-bottom: 20px;">Chính sách khách hàng VIP: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                <div class="row">
                    <?php 
                    $d = 0;
                    foreach ($rows['data'] as $item) {
                        $d++;
                        // $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                    ?>
                    <div class="gb-home-newest-big" style="display: inline-block;width: 100%;">
                        <div class="entry-images">
                            <a href="/images/download/<?= $item['file'] ?>" title="" download=""> <i class="fa fa-download"></i></a>
                        </div>
                        <div class="entry-content">
                            <div class="entry-tile">
                                <h3>
                                    <a href="#">
                                        <?= $item['name'] ?>                            </a>
                                </h3>
                                <div class="entry-date">
                                    <!-- <span>Jul 06,2021</span> -->
                                </div>
                                <div class="des-news-home" id="copy-text-105">
                                    <?= $item['note'] ?><br>                            
                                </div>
                                <!-- <a href="/hop-dong-mot" class="copy_Aa">Xem thêm</a> -->
                            </div>
                        </div>
                    </div>
                    <?php 
                    if ($d%3==0) {
                        // echo '<hr style="width:100%;border:0;" />';
                    }
                    } ?>
                </div>
                <div><?= $rows['paging'] ?></div>
            </div>
            <!-- <div class="col-md-4">
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0009.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0002.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0003.php";?>
                <?php //include DIR_SIDEBAR."MS_SIDEBAR_H2D_0008.php";?>
            </div> -->
        </div>
    </div>
</div>