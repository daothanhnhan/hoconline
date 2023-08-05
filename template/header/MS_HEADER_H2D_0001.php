<?php 
    if (!isset($_SESSION['kho'])) {
        $_SESSION['kho'] = 1;
    }
    function kho () {
        global $conn_vn;
        if (isset($_POST['xn_kho'])) {
            $kho = $_POST['kho'];
            if ($kho == 1) {
                $_SESSION['kho'] = 1;
            } else {
                $_SESSION['kho'] = 2;
            }
        }
    }
    kho();

    if (isset($_SESSION['user_id_gbvn'])) {
        $user_id = $_SESSION['user_id_gbvn'];
        $login_time = time();
        $sql = "UPDATE user SET login_time = '$login_time' WHERE user_id = $user_id";
        $result = mysqli_query($conn_vn, $sql);

        $user = $action->getDetail('user', 'user_id', $user_id);
        if ($user) {
            // var_dump($user);
            if ($user['vip'] == 1) {
                $quyen_vip = 1;
            } else {
                $quyen_vip = 0;
            }
        }
    } else {
        $quyen_vip = 0;
    }
?>
<style>
audio {
    width: 100%;
}
table audio {
/*border-radius: 90px;*/
width: 100px;
height: 30px;
/*margin-top: 5px;*/
/*margin-bottom: 5px;*/
}

table audio::-webkit-media-controls-mute-button {
display: none !important;
}

table audio::-webkit-media-controls-volume-slider {
display: none !important;
}

table audio::-webkit-media-controls-volume-control-container.closed {
display: none !important;
}
table audio::-webkit-media-controls-volume-control-container{
display: none !important;
}

table audio::-webkit-media-controls-panel {
  -webkit-justify-content: center;
  height: 25px;
  /*display: none;*/
}

/* Removes the timeline */
table audio::-webkit-media-controls-timeline {
  display: none !important;
}

/* Removes the time stamp */
table audio::-webkit-media-controls-current-time-display {
  display: none;
}
table audio::-webkit-media-controls-time-remaining-display {
  display: none;
}
table audio::-webkit-media-controls-timeline {
    display: none;
}
audio::-webkit-media-controls-seek-back-button {
    display: none;
}
audio::-webkit-media-controls-rewind-button {
    display: none;
}
audio::-webkit-media-controls-toggle-closed-captions-button {
    display: none;
}
audio::-internal-media-controls-overflow-button{
  display: none;
}
audio::-webkit-media-controls-toggle-closed-captions-button {
    display: none;
}
audio::-webkit-media-controls-enclosure {
    /*border-radius: 5px;*/
    /*background-color: green;*/
}

</style>
<!--MENU MOBILE-->
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
<!-- <script>
    setTimeout(function(){ 
        $('audio').each(function (index) {
      $(this).attr("disablepictureinpicture", true);
}); 
    }, 2000);

</script> -->
<?php include_once DIR_MENU."MS_MENU_H2D_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>

    <div class="gb-header-ruouvang">
        <div class="header-notifi">
            <div class="container">
                <h4>
                    HỌC ONLINE VỚI GIÁO VIÊN - NHIỀU CẤP ĐỘ, BÀI HỌC UPDATE MỖI NGÀY
                </h4>
                <i class="fa fa-times" aria-hidden="true" onclick="close1()"></i>
            </div>
        </div>
        <div class="gb-top-header_ruouvang">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <div class="col-md-4 col-xs-12">
                            <div class="col-md-8 col-xs-6">
                                <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo']?>" alt=""></a>
                            </div>
                            
                            <!-- <div class="select-kho col-md-4 col-xs-6">
                                <p>
                                    Chọn kho giao hàng:
                                </p>
                                <h5 data-toggle="modal" data-target="#chon_kho">
                                    <?= $_SESSION['kho']==1 ? 'Hà Nội' : 'Hồ Chí Minh' ?> <span><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                </h5>
                            </div> -->
                        </div>
                        <div class="gb-top-header_ruouvang-left col-md-5 col-xs-12">
                            <form action="/search-product/0" method="post">
                                <input type="text" name="q" placeholder="Tìm kiếm">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </form>
                        </div>
                        <div class="gb-top-header_ruouvang-right col-md-3 col-xs-12">
                            <h2>
                                <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                                <a href="/dang-ky" style="color: #000;">ĐĂNG KÝ</a> / <a href="/dang-nhap" style="color: #000;">ĐĂNG NHẬP</a> <a href="/gio-hang" style="color: #000;"><!-- <i class="fa fa-shopping-bag" aria-hidden="true"></i>  --><!-- <span></span>(<?= $action_product->cart() ?>)</span> --></a>
                            <?php } else { ?>
                                <a href="/thong-tin-tai-khoan" style="color: #000;">THÔNG TIN TÀI KHOẢN</a> <a href="/gio-hang" style="color: #000;"><i class="fa fa-shopping-bag" aria-hidden="true"></i> <span></span>(<?= $action_product->cart() ?>)</span></a>
                            <?php } ?>
                            </h2>
                        </div>
                    </div>

                    

                </div>

            </div>

        </div>

        <div class="gb-header-between_ruouvang sticky-menu">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 col-sm-12">

                      

                        <?php include DIR_MENU."MS_MENU_H2D_0001.php";?>

                    
                       

                    </div>

                </div>

            </div>

        </div>

        <div class="gb-header-bottom_ruouvang sticky-menu">

            <div class="container">

            	<div class="row">

            		<div class="col-md-9">

						<?php //include DIR_MENU."MS_MENU_H2D_0001.php";?>

            		</div>

            		<div class="col-md-3">

						<?php //include DIR_SEARCH."MS_SEARCH_H2D_0002.php"; ?>

            		</div>

            	</div>               

            </div>

        </div>

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>
<script>
    function close1(){
        $('.header-notifi').css("display","none");
    }
</script>

<!-- Modal -->
  <div class="modal fade" id="chon_kho" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Vui lòng chọn khu vực bạn muốn xem tồn kho:</h4>
        </div>
        <div class="modal-body">
          <form action="" method="post">
              <div class="form-group">
                <select name="kho" class="form-control">
                    <option value="1" <?= $_SESSION['kho']==1 ? 'selected' : '' ?> >Hà Nội</option>
                    <option value="2" <?= $_SESSION['kho']==2 ? 'selected' : '' ?> >Hồ Chí Minh</option>
                </select>
              </div>
              
              <button type="submit" name="xn_kho" class="btn btn-danger">Xác nhận</button>
            </form>
        </div>
        
      </div>
      
    </div>
  </div>