<nav class="gb-main-menu_ldpvinhome" >
    <div class="main-navigation uni-menu-text_ldpvinhome">
        <div class="cssmenu">
            <!-- <ul>
                <li><a href="/index.php" class="slide-section">Trang chủ</a></li>
                <li><a href="">Về chúng tôi</a></li>
                <li class="has-sub"><a href="">Sản phẩm</a>
                    <ul>
                        <li><a href="">Qùa tặng các dịp tết</a></li>
                        <li><a href="">Sổ da các loại</a></li>
                        <li class="has-sub"><a href="">Bút các loại</a>
                            <ul>
                                <li><a href="">Bút kim loại</a></li>
                                <li><a href="">Bút bi nhựa</a></li>
                            </ul>
                        </li>
                        <li><a href="san-pham">Balo, túi vải các loại</a></li>
                        <li class="has-sub"><a href="san-pham">Ô dù</a>
                            <ul>
                                <li><a href="san-pham">Ô 3 gập tự động 2 chiều</a></li>
                                <li><a href="san-pham">Ô 3 gập không tự động</a></li>
                                <li><a href="san-pham">Ô 2 gập bán tự động</a></li>
                                <li><a href="san-pham">Ô 5 gập mini</a></li>
                                <li><a href="san-pham">Ô gold</a></li>
                                <li><a href="san-pham">Ô cán thẳng</a></li>
                                <li><a href="san-pham">Ô 2 tầng</a></li>
                                <li><a href="san-pham">Các loại ô khác</a></li>
                            </ul>
                        </li>
                        <li><a href="san-pham">Đồ gốm sứ</a></li>
                        <li><a href="san-pham">Đồ Thủy tinh</a></li>
                        <li><a href="san-pham">Huy hiệu, biển tên</a></li>
                        <li><a href="san-pham">Đồng phục may mặc, mũ, áo</a></li>
                        <li><a href="san-pham">Các sản phẩm khác</a></li>
                    </ul>
                </li>
                <li><a href="">Chuyên nhận đặt hàng</a></li>
                <li><a href="">Công xưởng trực tiếp</a></li>
                <li><a href="tin-tuc">Tin tức</a></li>
                <li><a href="lien-he">Liên hệ</a></li>
            </ul> -->
            <?php 
                $list_menu = $menu->getListMainMenu_byOrderASC();
                $menu->showMenu_byMultiLevel_mainMenuTraiCam($list_menu,0,$lang,0);
            ?>
        </div>
    </div>
</nav>

<script src="/plugin/sticky/jquery.sticky.js"></script>
<script>
    $(document).ready(function () {
        var headerHeight = $('.gb-main-menu_ldpvinhome').outerHeight();

        $('.slide-section').click(function () {
            var linkHref = $(this).attr('href');
            $('html, body').animate({
                scrollTop: $(linkHref).offset().top - headerHeight
            }, 1000);
            e.preventDefault();
        });

        $(".sticky-menu").sticky({topSpacing:0});
    });
</script>