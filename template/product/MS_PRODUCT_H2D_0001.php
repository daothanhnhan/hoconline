<?php 
    $home_pro_new = $action_product->getListProductNew_hasLimit(12);
    $hoc_online = $action_product->getProductList_byMultiLevel_orderProductId(101,'desc',$trang,'',$slug);
?>

<div class="gb-tieubieu-product_ruouvang" style="background: #efefef94; padding-top: 15px" >
    <div class="container">
        <div class="gb-tieubieu-product_ruouvang-title">
            <h3>HỌC ONLINE VỚI GIÁO VIÊN</h3>
            <p class="hidden-xs">
                <!-- <a href="/san-pham-moi" >Xem tất cả ></a> -->
            </p>
        </div>
        <div class="gb-tieubieu-product_ruouvang-body">
            <div class="gb-tieubieu-product_ruouvang-slide">
                <?php 
                foreach ($hoc_online as $item) {
                    $row = $item;
                    $rowLang = $action_product->getProductLangDetail_byId($item['product_id'],$lang);
                ?>
                <div class="col-md-3 col-xs-6">
                    <div class="gb-product_ruouvang-item">
                        <div class="gb-product_ruouvang-item-img">
                            <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $row['product_img'] ?>" alt="<?= $rowLang['lang_product_name'] ?>" class="img-responsive"></a>
                        </div>
                        <div class="gb-product_ruouvang-item-text">
                            <?php //include DIR_PRODUCT."MS_PRODUCT_H2D_0002_1.php";?>
                            <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_product_name'] ?></a></h2>
                            <div class="excerpt-product_ruouvang">
                                <p>
                                    <?php echo substr($rowLang['lang_product_des'], 0, 150) ?>
                                </p>
                            </div>
                            <a href="/<?= $rowLang['friendly_url'] ?>">
                            <div class="news">
                                <p>VÀO HỌC</p>
                            </div>                            
                            </a>
                        </div>
                        <div class="gb-product_ruouvang-item-yeumua">
                            <!--YÊU THÍCH-->
                            <?php //include DIR_CART."MS_CART_H2D_0003.php";?>
                            <!--MUA HÀNG-->
                            <?php //include DIR_CART."MS_CART_H2D_0001.php";?>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <p class="hidden-md">
                <a href="/san-pham-moi" >Xem tất cả ></a>
            </p>
        </div>
    </div>
</div>
