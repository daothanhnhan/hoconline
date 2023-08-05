<?php 

    $action_product = new action_product(); 

    $slug = isset($_GET['slug']) ? $_GET['slug'] : '';



    $rowLang = $action_product->getProductLangDetail_byUrl($slug,$lang);

    $row = $action_product->getProductDetail_byId($rowLang[$nameColIdProduct_productLanguage],$lang);

    $productcat_id_arr = explode(",", $row['productcat_ar']);
    $productcat_id = $productcat_id_arr[0];
?>
<?php if ($row['product_id'] == 269 || $row['product_id'] == 268 || $row['product_id'] == 266 || $row['product_id'] == 264 || $row['product_id'] == 261) { ?>
<?php //include DIR_PRODUCT."MS_PRODUCT_H2D_0004.php";?>
<?php include DIR_PRODUCT."MS_PRODUCT_HOC_0020_2.php";?>
<?php } else { ?>
<?php include DIR_PRODUCT."MS_PRODUCT_HOC_0020.php";?>
<?php } ?>