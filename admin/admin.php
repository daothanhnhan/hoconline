<?php
include_once('__autoload.php');


if (isset($_GET['logout'])) {
    $acc->logout();
    $acc->redirect("index.php");
}

$trang = isset($_GET['trang']) ? $_GET['trang'] : '1';
$infor = $acc->getLoginInfor();

$lang = isset($_GET['lang']) ? $_GET['lang'] : 'vn';
if (isSet($_GET['lang'])) {
    $lang = $_GET['lang'];
    $id_lang = $_GET['lang'];
    // register the session and set the cookie
    $_SESSION['lang'] = $lang;

    //setcookie('lang', $lang, time() + (3600 * 24 * 30));
} else if (isSet($_SESSION['lang'])) {
    $lang = $_SESSION['lang'];
    $id_lang = $_SESSION['lang'];
} else if (isSet($_COOKIE['lang'])) {
    $lang = $_COOKIE['lang'];
    $id_lang = $_COOKIE['lang'];
} else {
    $lang = 'vn';
    $id_lang = 'vn';
}
switch ($lang) {
    case 'en':
        $lang_file = 'lang_en.php';
        break;

    case 'vn':
        $lang_file = 'lang_vn.php';
        break;

    default:
        $lang_file = 'lang_vn.php';

}
include_once '../languages/' . $lang_file;
$config_id = 1;
$rowConfigLang = $action->getDetail_New('config_languages', array('config_id', 'languages_code'), array(&$config_id, &$lang), 'is');
?>
<?php
    $hidden_multi_lang = 'hidden';// de an text laf hidden.
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quản trị</title>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" type="text/css" href="css/content.css"/>
    <link rel="stylesheet" type="text/css" href="css/header.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/content.css"/>
    <link rel="stylesheet" type="text/css" href="css/footer.css"/>
    <link rel="stylesheet" type="text/css" href="css/pageload.css"/>
    <link rel='stylesheet' type='text/css' href='css/chi-tiet-trang-noi-dung.css'/>
    <link rel='stylesheet' type='text/css' href='css/trac-nghiem-benh-tri.css'/>
    <link rel="stylesheet" type="text/css" href="css/font.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
    <script src="https://rawgit.com/andrewng330/PreviewImage/master/preview.image.min.js"></script>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="js/getslug.js"></script>
    <script src="js/action_query_ajax.js"></script>
    <script src="js/pageload.min.js"></script>

    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        (function () {
            var link_element = document.createElement("link"),
                s = document.getElementsByTagName("script")[0];
            if (window.location.protocol !== "http:" && window.location.protocol !== "https:") {
                link_element.href = "http:";
            }
            link_element.href += "//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600italic,600,700italic,700,800italic,800";
            link_element.rel = "stylesheet";
            link_element.type = "text/css";
            s.parentNode.insertBefore(link_element, s);
        })();
    </script>
</head>


<body>
<div id="divWrapper">
    <?php include_once('fixedNav.php'); ?>
    <div class="centerWeb">
        <div class="coverWeb">
            <?php
            if (isset($_GET["page"])) {
                switch ($_GET["page"]) {

                    case 'trinh-don':
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-noi-dung.css' />";
                        include_once('template/trinh-don/menu.php');
                        break;

                    case 'them-trinh-don':
                        include_once("template/trinh-don/them-menu.php");
                        break;

                    case 'sua-trinh-don':
                        include_once("template/trinh-don/sua-menu.php");
                        break;

                    /*----------- Bài viết ------------*/

                    case "bai-viet":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-noi-dung.css' />";
                        include_once("template/bai-viet/trang-noi-dung.php");
                        break;

                    case "sua-bai-viet":
                        include_once("template/bai-viet/chi-tiet-trang-noi-dung.php");
                        break;

                    case "them-bai-viet":
                        include_once("template/bai-viet/them-trang-noi-dung.php");
                        break;

                    /*----------- Danh mục bài viết ------------*/

                    case "danh-muc-tin-tuc":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-noi-dung.css' />";
                        include_once("template/danh-muc-tin-tuc/danh-muc-tin-tuc.php");
                        break;

                    case "sua-danh-muc-tin-tuc":
                        include_once("template/danh-muc-tin-tuc/sua-danh-muc-tin-tuc.php");
                        break;

                    case "them-danh-muc-tin-tuc":
                        include_once("template/danh-muc-tin-tuc/them-danh-muc-tin-tuc.php");
                        break;

                    /*------------- Tin tức ------------*/

                    case "them-tin-tuc":
                        include_once("template/tin-tuc/them-tin-tuc.php");
                        break;

                    case "sua-tin-tuc":
                        include_once("template/tin-tuc/sua-tin-tuc.php");
                        break;

                    case "tin-tuc":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-bai-viet.css' />";
                        include_once("template/tin-tuc/tin-tuc.php");
                        break;

                    /*----------- Danh mục dịch vụ ------------*/

                    case "danh-muc-dich-vu":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-danh-muc-dich-vu.css' />";
                        include_once("template/danh-muc-dich-vu/danh-muc-dich-vu.php");
                        break;

                    case "sua-danh-muc-dich-vu":
                        include_once("template/danh-muc-dich-vu/sua-danh-muc-dich-vu.php");
                        break;

                    case "them-danh-muc-dich-vu":
                        include_once("template/danh-muc-dich-vu/them-danh-muc-dich-vu.php");
                        break;

                    /*------------- Tin tức ------------*/

                    case "them-dich-vu":
                        include_once("template/dich-vu/them-dich-vu.php");
                        break;

                    case "sua-dich-vu":
                        include_once("template/dich-vu/sua-dich-vu.php");
                        break;

                    case "dich-vu":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-dich-vu.css' />";
                        include_once("template/dich-vu/dich-vu.php");
                        break;


                    /*-------------- Sản phẩm -----------*/

                    case "them-san-pham":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-san-pham-them-moi.css' />";
                        include_once("template/san-pham/them-san-pham.php");
                        break;

                    case "sua-san-pham":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-san-pham-them-moi.css' />";
                        include_once("template/san-pham/sua-san-pham.php");
                        break;

                    case "san-pham":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-noi-dung.css' />";
                        include_once("template/san-pham/san-pham.php");
                        break;

                    /*-------------- Danh mục sản phẩm -----------*/

                    case "them-danh-muc-san-pham":
                        include_once("template/danh-muc-san-pham/them-loai-san-pham.php");
                        break;

                    case "sua-danh-muc-san-pham":
                        include_once("template/danh-muc-san-pham/sua-loai-san-pham.php");
                        break;

                    case "danh-muc-san-pham":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-noi-dung.css' />";
                        include_once("template/danh-muc-san-pham/loai-san-pham.php");
                        break;

                    /*-------------- danh sach nguoi dung dang ky thong tin ... -----------*/

                    case "dang-ky":
                        include_once("template/dang-ky/dang-ky.php");
                        break;

                    case "sua-dang-ky":
                        include_once("template/dang-ky/sua-dang-ky.php");
                        break;

                    case "them-dang-ky":
                        include_once("template/dang-ky/them-dang-ky.php");
                        break;

                    /*-------------- danh sach nguoi dung dang ky thành viên -----------*/

                    // case thanh vien user
                     case "tai-khoan-user":
                        include_once("template/tai-khoan-user/tai-khoan-user.php");
                        break;
                    case "them-tai-khoan-user":
                        include_once("template/tai-khoan-user/them-tai-khoan-user.php");
                        break;
                    case "sua-tai-khoan-user":
                        include_once("template/tai-khoan-user/sua-tai-khoan-user.php");
                        break;
                    case "xoa-tai-khoan-user":
                        include_once("template/tai-khoan-user/xoa-tai-khoan-user.php");
                        break;
                    case "gui-thong-bao":
                        include_once("template/tai-khoan-user/gui-thong-bao.php");
                        break;
                    // 

                    case "thanh-vien":
                        include_once("template/thanh-vien/thanh-vien.php");
                        break;

                    case "sua-thanh-vien":
                        include_once("template/thanh-vien/sua-thanh-vien.php");
                        break;

                    case "them-thanh-vien":
                        include_once("template/thanh-vien/them-thanh-vien.php");
                        break;


                    /*------------- Tài khoản ------------*/

                    case "tai-khoan":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-san-pham.css' />";
                        include_once("template/tai-khoan/tai-khoan.php");
                        break;

                    case "them-tai-khoan":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-san-pham-them-moi.css' />";
                        include_once("template/tai-khoan/them-tai-khoan.php");
                        break;

                    case "sua-tai-khoan":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-san-pham-them-moi.css' />";
                        include_once("template/tai-khoan/sua-tai-khoan.php");
                        break;


                    /*--------- Config -------------*/

                    case 'config':
                        include_once('config.php');
                        break;

                    ///////////// Trang đơn hàng //////////////////

                    case "them-don-hang":
                        include_once("template/don-hang/them-don-hang.php");
                        break;

                    case "sua-don-hang":
                        echo "<link rel='stylesheet' type='text/css' href='css/sua-don-hang.css' />";
                        include_once("template/don-hang/sua-don-hang.php");
                        break;

                    case "don-hang":
                        echo "<link rel='stylesheet' type='text/css' href='css/trang-don-hang.css' />";
                        include_once("template/don-hang/don-hang.php");
                        break;

                    case 'lien-he':
                        include_once('template/lien-he.php');
                        break;
                    //////////////Slider///////////////////
                    case "slider":
                        include_once("slider.php");
                        break;

                    case "them-slider":
                        include_once("them-slider.php");
                        break;

                    case "sua-slider":
                        include_once("sua-slider.php");
                        break;
                    /////////////// Quảng cáo //////////////////////
                    case "quang-cao":
                        include_once("quang-cao.php");
                        break;

                    case "them-quang-cao":
                        include_once("them-quang-cao.php");
                        break;

                    case "sua-quang-cao":
                        include_once("sua-quang-cao.php");
                        break;
                    ///////////// thuoc tinh /////////////
                    case "thuoc-tinh":
                        include_once("template/thuoc-tinh/thuoc-tinh.php");
                        break;
                    case "them-thuoc-tinh":
                        include_once("template/thuoc-tinh/them-thuoc-tinh.php");
                        break;
                    case "sua-thuoc-tinh":
                        include_once("template/thuoc-tinh/sua-thuoc-tinh.php");
                        break;
                    case "xoa-thuoc-tinh":
                        include_once("template/thuoc-tinh/xoa-thuoc-tinh.php");
                        break;
                    ///////////// thuoc tinh value ////////
                    case "thuoc-tinh-value":
                        include_once("template/thuoc-tinh-value/thuoc-tinh-value.php");
                        break;
                    case "them-thuoc-tinh-value":
                        include_once("template/thuoc-tinh-value/them-thuoc-tinh-value.php");
                        break;
                    case "sua-thuoc-tinh-value":
                        include_once("template/thuoc-tinh-value/sua-thuoc-tinh-value.php");
                        break;
                    case "xoa-thuoc-tinh-value":
                        include_once("template/thuoc-tinh-value/xoa-thuoc-tinh-value.php");
                        break;
                    /////////// nhom san pham /////////////
                    case "nhom-san-pham":
                        include_once("template/nhom-san-pham/nhom-san-pham.php");
                        break;
                    case "them-nhom-san-pham":
                        include_once("template/nhom-san-pham/them-nhom-san-pham.php");
                        break;
                    case "sua-nhom-san-pham":
                        include_once("template/nhom-san-pham/sua-nhom-san-pham.php");
                        break;
                    case "xoa-nhom-san-pham":
                        include_once("template/nhom-san-pham/xoa-nhom-san-pham.php");
                        break;
                    ///////////// tai lieu ////////////////
                    case "tai-lieu":
                        include_once("template/tai-lieu/tai-lieu.php");
                        break;
                    case "them-tai-lieu":
                        include_once("template/tai-lieu/them-tai-lieu.php");
                        break;
                    case "sua-tai-lieu":
                        include_once("template/tai-lieu/sua-tai-lieu.php");
                        break;
                    case "xoa-tai-lieu":
                        include_once("template/tai-lieu/xoa-tai-lieu.php");
                        break;
                    //////////// trăc ngiệm ////////////////
                    case "bai-cap-do":
                        include_once("template/bai-cap-do/bai-cap-do.php");
                        break;
                    //////////// bài trắc nghiệm //////////
                    case "bai-trac-nghiem":
                        include_once("template/bai-trac-nghiem/bai-trac-nghiem.php");
                        break;
                    case "them-bai-trac-nghiem":
                        include_once("template/bai-trac-nghiem/them-bai-trac-nghiem.php");
                        break;
                    case "sua-bai-trac-nghiem":
                        include_once("template/bai-trac-nghiem/sua-bai-trac-nghiem.php");
                        break;
                    case "xoa-bai-trac-nghiem":
                        include_once("template/bai-trac-nghiem/xoa-bai-trac-nghiem.php");
                        break;
                    ////////////// de thi /////////////////
                    case "de-thi":
                        include_once("template/de-thi/de-thi.php");
                        break;
                    //////////// nhom de thi //////////////
                    case "nhom-de-thi":
                        include_once("template/nhom-de-thi/nhom-de-thi.php");
                        break;
                    case "them-nhom-de-thi":
                        include_once("template/nhom-de-thi/them-nhom-de-thi.php");
                        break;
                    case "sua-nhom-de-thi":
                        include_once("template/nhom-de-thi/sua-nhom-de-thi.php");
                        break;
                    case "xoa-nhom-de-thi":
                        include_once("template/nhom-de-thi/xoa-nhom-de-thi.php");
                        break;
                    ///////////// câu đề thi //////////////
                    case "cau-de-thi":
                        include_once("template/cau-de-thi/cau-de-thi.php");
                        break;
                    case "them-cau-de-thi":
                        include_once("template/cau-de-thi/them-cau-de-thi.php");
                        break;
                    case "sua-cau-de-thi":
                        include_once("template/cau-de-thi/sua-cau-de-thi.php");
                        break;
                    case "xoa-cau-de-thi":
                        include_once("template/cau-de-thi/xoa-cau-de-thi.php");
                        break;
                    /////////// bai hoc cap do ////////////
                    case "bai-hoc-cap-do":
                        include_once("template/bai-hoc-cap-do/bai-hoc-cap-do.php");
                        break;
                    case "them-bai-hoc-cap-do":
                        include_once("template/bai-hoc-cap-do/them-bai-hoc-cap-do.php");
                        break;
                    case "sua-bai-hoc-cap-do":
                        include_once("template/bai-hoc-cap-do/sua-bai-hoc-cap-do.php");
                        break;
                    case "xoa-bai-hoc-cap-do":
                        include_once("template/bai-hoc-cap-do/xoa-bai-hoc-cap-do.php");
                        break;
                    ///////////// tư dien /////////////////
                    case "tu-dien":
                        include_once("template/tu-dien/tu-dien.php");
                        break;
                    case "them-tu-dien":
                        include_once("template/tu-dien/them-tu-dien.php");
                        break;
                    case "sua-tu-dien":
                        include_once("template/tu-dien/sua-tu-dien.php");
                        break;
                    case "xoa-tu-dien":
                        include_once("template/tu-dien/xoa-tu-dien.php");
                        break;
                    /////////// tu dien 1 ///////////////
                    case "tu-dien-phu":
                        include_once("template/tu-dien-phu/tu-dien-phu.php");
                        break;
                    case "them-tu-dien-phu":
                        include_once("template/tu-dien-phu/them-tu-dien-phu.php");
                        break;
                    case "sua-tu-dien-phu":
                        include_once("template/tu-dien-phu/sua-tu-dien-phu.php");
                        break;
                    case "xoa-tu-dien-phu":
                        include_once("template/tu-dien-phu/xoa-tu-dien-phu.php");
                        break;
                    //////////// giao trinh ///////////////
                    case "giao-trinh":
                        include_once("template/giao-trinh/giao-trinh.php");
                        break;
                    case "them-giao-trinh":
                        include_once("template/giao-trinh/them-giao-trinh.php");
                        break;
                    case "sua-giao-trinh":
                        include_once("template/giao-trinh/sua-giao-trinh.php");
                        break;
                    case "xoa-giao-trinh":
                        include_once("template/giao-trinh/xoa-giao-trinh.php");
                        break;
                    //////////// giao trinh bai ///////////
                    case "giao-trinh-bai":
                        include_once("template/giao-trinh-bai/giao-trinh-bai.php");
                        break;
                    case "them-giao-trinh-bai":
                        include_once("template/giao-trinh-bai/them-giao-trinh-bai.php");
                        break;
                    case "sua-giao-trinh-bai":
                        include_once("template/giao-trinh-bai/sua-giao-trinh-bai.php");
                        break;
                    case "xoa-giao-trinh-bai":
                        include_once("template/giao-trinh-bai/xoa-giao-trinh-bai.php");
                        break;
                    ///////// giao trinh bai cau hoi //////
                    case "giao-trinh-bai-cau-hoi":
                        include_once("template/giao-trinh-bai-cau-hoi/giao-trinh-bai-cau-hoi.php");
                        break;
                    case "them-giao-trinh-bai-cau-hoi":
                        include_once("template/giao-trinh-bai-cau-hoi/them-giao-trinh-bai-cau-hoi.php");
                        break;
                    case "sua-giao-trinh-bai-cau-hoi":
                        include_once("template/giao-trinh-bai-cau-hoi/sua-giao-trinh-bai-cau-hoi.php");
                        break;
                    case "xoa-giao-trinh-bai-cau-hoi":
                        include_once("template/giao-trinh-bai-cau-hoi/xoa-giao-trinh-bai-cau-hoi.php");
                    //////////// de thi jlpt //////////////
                    case "de-thi-jlpt":
                        include_once("template/de-thi-jlpt/de-thi-jlpt.php");
                        break;
                    case "them-de-thi-jlpt":
                        include_once("template/de-thi-jlpt/them-de-thi-jlpt.php");
                        break;
                    case "sua-de-thi-jlpt":
                        include_once("template/de-thi-jlpt/sua-de-thi-jlpt.php");
                        break;
                    case "xoa-de-thi-jlpt":
                        include_once("template/de-thi-jlpt/xoa-de-thi-jlpt.php");
                        break;
                    /////////// nhom de thi jlpt //////////
                    case "nhom-de-thi-jlpt":
                        include_once("template/nhom-de-thi-jlpt/nhom-de-thi-jlpt.php");
                        break;
                    case "them-nhom-de-thi-jlpt":
                        include_once("template/nhom-de-thi-jlpt/them-nhom-de-thi-jlpt.php");
                        break;
                    case "sua-nhom-de-thi-jlpt":
                        include_once("template/nhom-de-thi-jlpt/sua-nhom-de-thi-jlpt.php");
                        break;
                    case "xoa-nhom-de-thi-jlpt":
                        include_once("template/nhom-de-thi-jlpt/xoa-nhom-de-thi-jlpt.php");
                        break;
                    //////////// cau de thi jlpt //////////
                    case "cau-de-thi-jlpt":
                        include_once("template/cau-de-thi-jlpt/cau-de-thi-jlpt.php");
                        break;
                    case "them-cau-de-thi-jlpt":
                        include_once("template/cau-de-thi-jlpt/them-cau-de-thi-jlpt.php");
                        break;
                    case "sua-cau-de-thi-jlpt":
                        include_once("template/cau-de-thi-jlpt/sua-cau-de-thi-jlpt.php");
                        break;
                    case "xoa-cau-de-thi-jlpt":
                        include_once("template/cau-de-thi-jlpt/xoa-cau-de-thi-jlpt.php");
                        break;
                    ///////////// de thi trac nghiem //////
                    case "de-thi-trac-nghiem":
                        include_once("template/de-thi-trac-nghiem/de-thi-trac-nghiem.php");
                        break;
                    case "them-de-thi-trac-nghiem":
                        include_once("template/de-thi-trac-nghiem/them-de-thi-trac-nghiem.php");
                        break;
                    case "sua-de-thi-trac-nghiem":
                        include_once("template/de-thi-trac-nghiem/sua-de-thi-trac-nghiem.php");
                        break;
                    case "xoa-de-thi-trac-nghiem":
                        include_once("template/de-thi-trac-nghiem/xoa-de-thi-trac-nghiem.php");
                        break;
                    /////////// nhom cau do ///////////////
                    case "nhom-cau-do":
                        include_once("template/nhom-cau-do/nhom-cau-do.php");
                        break;
                    case "them-nhom-cau-do":
                        include_once("template/nhom-cau-do/them-nhom-cau-do.php");
                        break;
                    case "sua-nhom-cau-do":
                        include_once("template/nhom-cau-do/sua-nhom-cau-do.php");
                        break;
                    case "xoa-nhom-cau-do":
                        include_once("template/nhom-cau-do/xoa-nhom-cau-do.php");
                        break;
                    //////////// cau cau do ///////////////
                    case "cau-cau-do":
                        include_once("template/cau-cau-do/cau-cau-do.php");
                        break;
                    case "them-cau-cau-do":
                        include_once("template/cau-cau-do/them-cau-cau-do.php");
                        break;
                    case "sua-cau-cau-do":
                        include_once("template/cau-cau-do/sua-cau-cau-do.php");
                        break;
                    case "xoa-cau-cau-do":
                        include_once("template/cau-cau-do/xoa-cau-cau-do.php");
                        break;
                    //////////// nhóm thi nghe ////////////
                    case "nhom-thi-nghe":
                        include_once("template/nhom-thi-nghe/nhom-thi-nghe.php");
                        break;
                    case "them-nhom-thi-nghe":
                        include_once("template/nhom-thi-nghe/them-nhom-thi-nghe.php");
                        break;
                    case "sua-nhom-thi-nghe":
                        include_once("template/nhom-thi-nghe/sua-nhom-thi-nghe.php");
                        break;
                    case "xoa-nhom-thi-nghe":
                        include_once("template/nhom-thi-nghe/xoa-nhom-thi-nghe.php");
                    /////////// cau thi nghe //////////////
                    case "cau-thi-nghe":
                        include_once("template/cau-thi-nghe/cau-thi-nghe.php");
                        break;
                    case "them-cau-thi-nghe":
                        include_once("template/cau-thi-nghe/them-cau-thi-nghe.php");
                        break;
                    case "sua-cau-thi-nghe":
                        include_once("template/cau-thi-nghe/sua-cau-thi-nghe.php");
                        break;
                    case "xoa-cau-thi-nghe":
                        include_once("template/cau-thi-nghe/xoa-cau-thi-nghe.php");
                        break;
                    //////////// nhom luyen nghe //////////
                    case "nhom-luyen-nghe":
                        include_once("template/nhom-luyen-nghe/nhom-luyen-nghe.php");
                        break;
                    case "them-nhom-luyen-nghe":
                        include_once("template/nhom-luyen-nghe/them-nhom-luyen-nghe.php");
                        break;
                    case "sua-nhom-luyen-nghe":
                        include_once("template/nhom-luyen-nghe/sua-nhom-luyen-nghe.php");
                        break;
                    case "xoa-nhom-luyen-nghe":
                        include_once("template/nhom-luyen-nghe/xoa-nhom-luyen-nghe.php");
                        break;
                    //////////// cau luyen nghe ///////////
                    case "cau-luyen-nghe":
                        include_once("template/cau-luyen-nghe/cau-luyen-nghe.php");
                        break;
                    case "them-cau-luyen-nghe":
                        include_once("template/cau-luyen-nghe/them-cau-luyen-nghe.php");
                        break;
                    case "sua-cau-luyen-nghe":
                        include_once("template/cau-luyen-nghe/sua-cau-luyen-nghe.php");
                        break;
                    case "xoa-cau-luyen-nghe":
                        include_once("template/cau-luyen-nghe/xoa-cau-luyen-nghe.php");
                        break;
                    ///////////// binh luan ///////////////
                    case "binh-luan":
                        include_once("template/binh-luan/binh-luan.php");
                        break;
                    case "them-binh-luan":
                        include_once("template/binh-luan/them-binh-luan.php");
                        break;
                    case "sua-binh-luan":
                        include_once("template/binh-luan/sua-binh-luan.php");
                        break;
                    case "xoa-binh-luan":
                        include_once("template/binh-luan/xoa-binh-luan.php");
                        break;
                    //////////// giao trinh chính ///////////////
                    case "giao-trinh-chinh":
                        include_once("template/giao-trinh-chinh/giao-trinh-chinh.php");
                        break;
                    case "them-giao-trinh-chinh":
                        include_once("template/giao-trinh-chinh/them-giao-trinh-chinh.php");
                        break;
                    case "sua-giao-trinh-chinh":
                        include_once("template/giao-trinh-chinh/sua-giao-trinh-chinh.php");
                        break;
                    case "xoa-giao-trinh-chinh":
                        include_once("template/giao-trinh-chinh/xoa-giao-trinh-chinh.php");
                        break;
                    /////////// giáo trình tab chính //////
                    case "giao-trinh-tab-chinh":
                        include_once("template/giao-trinh-tab-chinh/giao-trinh-tab-chinh.php");
                        break;
                    case "them-giao-trinh-tab-chinh":
                        include_once("template/giao-trinh-tab-chinh/them-giao-trinh-tab-chinh.php");
                        break;
                    case "sua-giao-trinh-tab-chinh":
                        include_once("template/giao-trinh-tab-chinh/sua-giao-trinh-tab-chinh.php");
                        break;
                    case "xoa-giao-trinh-tab-chinh":
                        include_once("template/giao-trinh-tab-chinh/xoa-giao-trinh-tab-chinh.php");
                        break;
                    /////////// giáo trình tab phụ //////
                    case "giao-trinh-tab-phu":
                        include_once("template/giao-trinh-tab-phu/giao-trinh-tab-phu.php");
                        break;
                    case "them-giao-trinh-tab-phu":
                        include_once("template/giao-trinh-tab-phu/them-giao-trinh-tab-phu.php");
                        break;
                    case "sua-giao-trinh-tab-phu":
                        include_once("template/giao-trinh-tab-phu/sua-giao-trinh-tab-phu.php");
                        break;
                    case "xoa-giao-trinh-tab-phu":
                        include_once("template/giao-trinh-tab-phu/xoa-giao-trinh-tab-phu.php");
                        break;
                    //////////// giao trinh chính ///////////////
                    case "giao-trinh-chinh-bai":
                        include_once("template/giao-trinh-chinh-bai/giao-trinh-chinh-bai.php");
                        break;
                    case "them-giao-trinh-chinh-bai":
                        include_once("template/giao-trinh-chinh-bai/them-giao-trinh-chinh-bai.php");
                        break;
                    case "sua-giao-trinh-chinh-bai":
                        include_once("template/giao-trinh-chinh-bai/sua-giao-trinh-chinh-bai.php");
                        break;
                    case "xoa-giao-trinh-chinh-bai":
                        include_once("template/giao-trinh-chinh-bai/xoa-giao-trinh-chinh-bai.php");
                        break;
                    case "giao-trinh-chinh-bai-sap-xep":
                        include_once("template/giao-trinh-chinh-bai/giao-trinh-chinh-bai-sap-xep.php");
                        break;
                    ///////////// ca hoi tab //////////////
                    case "cau-hoi-tab":
                        include_once("template/cau-hoi-tab/cau-hoi-tab.php");
                        break;
                    case "them-cau-hoi-tab":
                        include_once("template/cau-hoi-tab/them-cau-hoi-tab.php");
                        break;
                    case "sua-cau-hoi-tab":
                        include_once("template/cau-hoi-tab/sua-cau-hoi-tab.php");
                        break;
                    case "xoa-cau-hoi-tab":
                        include_once("template/cau-hoi-tab/xoa-cau-hoi-tab.php");
                        break;
                    /////////// noi dung tab phu //////////
                    case "noi-dung-tab-phu":
                        include_once("template/noi-dung-tab-phu/noi-dung-tab-phu.php");
                        break;
                    case "them-noi-dung-tab-phu":
                        include_once("template/noi-dung-tab-phu/them-noi-dung-tab-phu.php");
                        break;
                    case "sua-noi-dung-tab-phu":
                        include_once("template/noi-dung-tab-phu/sua-noi-dung-tab-phu.php");
                        break;
                    case "xoa-noi-dung-tab-phu":
                        include_once("template/noi-dung-tab-phu/xoa-noi-dung-tab-phu.php");
                        break;
                    ///////////// phien am ////////////////
                    case "phien-am":
                        include_once("template/phien-am/phien-am.php");
                        break;
                    case "them-phien-am":
                        include_once("template/phien-am/them-phien-am.php");
                        break;
                    case "sua-phien-am":
                        include_once("template/phien-am/sua-phien-am.php");
                        break;
                    case "xoa-phien-am":
                        include_once("template/phien-am/xoa-phien-am.php");
                        break;
                    ///////////// phien am  nghe //////////
                    case "phien-am-nghe":
                        include_once("template/phien-am-nghe/phien-am-nghe.php");
                        break;
                    case "them-phien-am-nghe":
                        include_once("template/phien-am-nghe/them-phien-am-nghe.php");
                        break;
                    case "sua-phien-am-nghe":
                        include_once("template/phien-am-nghe/sua-phien-am-nghe.php");
                        break;
                    case "xoa-phien-am-nghe":
                        include_once("template/phien-am-nghe/xoa-phien-am-nghe.php");
                        break;
                    ///////////// dien tu /////////////////
                    case "dien-tu":
                        include_once("template/dien-tu/dien-tu.php");
                        break;
                    case "them-dien-tu":
                        include_once("template/dien-tu/them-dien-tu.php");
                        break;
                    case "sua-dien-tu":
                        include_once("template/dien-tu/sua-dien-tu.php");
                        break;
                    case "xoa-dien-tu":
                        include_once("template/dien-tu/xoa-dien-tu.php");
                        break;
                    ///////////// nhom dien tu ////////////
                    case "nhom-dien-tu":
                        include_once("template/nhom-dien-tu/nhom-dien-tu.php");
                        break;
                    case "them-nhom-dien-tu":
                        include_once("template/nhom-dien-tu/them-nhom-dien-tu.php");
                        break;
                    case "sua-nhom-dien-tu":
                        include_once("template/nhom-dien-tu/sua-nhom-dien-tu.php");
                        break;
                    case "xoa-nhom-dien-tu":
                        include_once("template/nhom-dien-tu/xoa-nhom-dien-tu.php");
                        break;
                    //////////// nhóm cau hoi tab /////////
                    case "nhom-cau-hoi-tab":
                        include_once("template/nhom-cau-hoi-tab/nhom-cau-hoi-tab.php");
                        break;
                    case "them-nhom-cau-hoi-tab":
                        include_once("template/nhom-cau-hoi-tab/them-nhom-cau-hoi-tab.php");
                        break;
                    case "sua-nhom-cau-hoi-tab":
                        include_once("template/nhom-cau-hoi-tab/sua-nhom-cau-hoi-tab.php");
                        break;
                    case "xoa-nhom-cau-hoi-tab":
                        include_once("template/nhom-cau-hoi-tab/xoa-nhom-cau-hoi-tab.php");
                        break;
                    //////////// nhóm text de thi jlpt ////
                    case "nhom-text-de-thi-jlpt":
                        include_once("template/nhom-text-de-thi-jlpt/nhom-text-de-thi-jlpt.php");
                        break;
                    case "them-nhom-text-de-thi-jlpt":
                        include_once("template/nhom-text-de-thi-jlpt/them-nhom-text-de-thi-jlpt.php");
                        break;
                    case "sua-nhom-text-de-thi-jlpt":
                        include_once("template/nhom-text-de-thi-jlpt/sua-nhom-text-de-thi-jlpt.php");
                        break;
                    case "xoa-nhom-text-de-thi-jlpt":
                        include_once("template/nhom-text-de-thi-jlpt/xoa-nhom-text-de-thi-jlpt.php");
                        break;
                    //////// nhóm đề thi trắc nghiệm //////
                    case "nhom-de-thi-trac-nghiem":
                        include_once("template/nhom-de-thi-trac-nghiem/nhom-de-thi-trac-nghiem.php");
                        break;
                    case "them-nhom-de-thi-trac-nghiem":
                        include_once("template/nhom-de-thi-trac-nghiem/them-nhom-de-thi-trac-nghiem.php");
                        break;
                    case "sua-nhom-de-thi-trac-nghiem":
                        include_once("template/nhom-de-thi-trac-nghiem/sua-nhom-de-thi-trac-nghiem.php");
                        break;
                    case "xoa-nhom-de-thi-trac-nghiem":
                        include_once("template/nhom-de-thi-trac-nghiem/xoa-nhom-de-thi-trac-nghiem.php");
                        break;
                    ///////////// tab chọn ////////////////
                    case "tab-chon":
                        include_once("template/tab-chon/tab-chon.php");
                        break;
                    case "them-tab-chon":
                        include_once("template/tab-chon/them-tab-chon.php");
                        break;
                    case "sua-tab-chon":
                        include_once("template/tab-chon/sua-tab-chon.php");
                        break;
                    case "xoa-tab-chon":
                        include_once("template/tab-chon/xoa-tab-chon.php");
                        break;
                    ///////////// tab con /////////////////
                    case "tab-con":
                        include_once("template/tab-con/tab-con.php");
                        break;
                    case "them-tab-con":
                        include_once("template/tab-con/them-tab-con.php");
                        break;
                    case "sua-tab-con":
                        include_once("template/tab-con/sua-tab-con.php");
                        break;
                    case "xoa-tab-con":
                        include_once("template/tab-con/xoa-tab-con.php");
                        break;
                    ///////////// Default /////////////////
                    default:
                        include_once("homeAdmin.php");
                }
            } else {
                include_once("homeAdmin.php");
            }
            ?>

        </div><!--end coverWeb-->
    </div>
</div><!--end divWrapper-->
<link rel="stylesheet" type="text/css" href="../css/select2.min.css"/>
<script src="../js/select2.min.js"></script>
<script>
    $(function () {
        $('.select2').select2({
            width: '100%',
        });
    })
</script>
<style>
    .select2-results__option, .select2-results__options {
        width: 100%;
    }
</style>
</body>
</html>

