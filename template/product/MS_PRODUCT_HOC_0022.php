<?php                                                                        
    if (isset($_GET['slug']) && $_GET['slug'] != '') {
        $slug = $_GET['slug'];

        $rowCatLang = $action_product->getProductCatLangDetail_byUrl($slug,$lang);
        $rowCat = $action_product->getProductCatDetail_byId($rowCatLang['productcat_id'],$lang);
        $rows = $action_product->getProductList_byMultiLevel_orderProductId($rowCat['productcat_id'],'desc',$trang,12,$slug);//var_dump($rows);
    }else{
        $rows = $action->getList('product','','','product_id','desc',$trang,12,'san-pham');
    }
    
    $_SESSION['sidebar'] = 'productCat';
?>
<?php include DIR_BREADCRUMBS."MS_BREADCRUMS_H2D_0001.php";?>
<div class="gb-page-blog_ruouvang">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <?php 
                    $d = 0;
                    foreach ($rows['data'] as $item) {
                        $d++;
                        $row = $item;
                        $rowLang = $action_product->getProductLangDetail_byId($row['product_id'],$lang);
                    ?>
                    <div class="col-sm-4">
                        <div class="gb-news-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive"></a>
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text">
                                <div class="gb-news-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h3>                                    
                                </div>
                                <div class="gb-news-blog_ruouvang-item-text-des">
                                    <?= $rowLang['lang_product_des'] ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    
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