<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           // window.location.href = "/gio-hang";
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                  window.location = '/gio-hang';
              }else{
                  location.reload();
              }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>
<footer class="site-footer footer-default" style="margin-top: 10px;">
    <div class="footer-main-content_ruouvang">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-6">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>CÔNG TY </h2>
                                    <ul>
                                        <li><a href="/ve-chung-toi">Giới thiệu</a></li>
                                        <li><a href="/tuyen-cong-tac-vien">Tuyển dụng</a></li>
                                        
                                        <!-- <li><span>Skype: </span> hang.vpms</li> -->
                                    </ul>
                                    
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                
                                <div class="col-md-3 col-xs-6">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>CHÍNH SÁCH </h2>
                                    <ul>
                                        <li><a href="/chinh-sach-bao-mat">Chính sách bảo mật</a></li>
                                        <li><a href="/uu-dai-khach-hang-than-thiet">Ưu đãi khách hàng thân thiết</a></li>
                                        <li><a href="/chinh-sach-bao-hanh-tron-doi">Chính sách bảo hành trọn đời</a></li>
                                        <li><a href="/chinh-sach-giao-nhan">Chính sách giao nhận</a></li>
                                        <li><a href="/chinh-sach-doi-san-pham">Chính sách đổi sản phẩm</a></li>
                                        <!-- <li><span>Skype: </span> hang.vpms</li> -->
                                    </ul>
                                  
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                <div class="col-md-3 col-xs-6">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>Lượt truy cập </h2>
                                    <!-- <ul>
                                        <li><a href="/huong-dan-mua-hang">Hướng dẫn mua hàng</a></li>
                                        <li><a href="/tra-cuu-bao-hanh">Tra cứu bảo hành</a></li>
                                        <li><a href="/quy-dinh-ve-phieu-qua-tang">Quy định về phiếu quà tặng</a></li>
                                        <li><a href="/dieu-khoan-su-dung-1">Điều khoản sử dụng</a></li>
                                        
                                    </ul> -->
                                    <?php include DIR_FOOTER."MS_FOOTER_H2D_0002.php";?>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                                <div class="col-md-3 col-xs-6">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>KẾT NỐI VUIHOCTIENGNHAT </h2>
                                    <?php include DIR_SOCIAL."MS_SOCIAL_H2D_0002.php";?>
                                    <br>
                                    <h2>PHƯƠNG THỨC THANH TOÁN</h2>
                                    <?php include DIR_SOCIAL."MS_SOCIAL_H2D_0003.php";?>
                                    
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="scrolltoTop">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </div>
</footer>
<script>
    

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    $(".scrolltoTop").css("display","inline");
  } else {
     $(".scrolltoTop").css("display","none");
  }
}

// When the user clicks on the button, scroll to the top of the document
$('.scrolltoTop').on("click",function(){
      $('html, body').animate({scrollTop:0}, 'slow');
});
</script>

<script>
$(function(){
    $(document.body).bind('mouseup', function(e){
        var selection;
        
        if (window.getSelection) {
          selection = window.getSelection();
        } else if (document.selection) {
          selection = document.selection.createRange();
        }
        
        // selection.toString() !== '' && alert('"' + selection.toString() + '" was selected at ' + e.pageX + '/' + e.pageY);
        
        if (selection.toString() !== '') {
            // alert('"' + selection.toString() + '" was selected at ' + e.pageX + '/' + e.pageY);
            document.getElementById("tra-cuu").style.top = e.pageY + "px";
            document.getElementById("tra-cuu").style.left = e.pageX + "px";
            document.getElementById("tra-cuu").style.display = "block";

            tra_tu(selection.toString());

        } else {
            document.getElementById("tra-cuu").style.display = "none";
        }
    });
});
</script>
<script>
    function tra_tu (text) {
        const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        document.getElementById("noi-dung-tra-tu").innerHTML = this.responseText;
        }
      xhttp.open("GET", "/functions/ajax/tra_tu.php?tu="+text, true);
      xhttp.send();
    }
</script>
<div style="position: absolute;top: 0;left: 0;background: #aacae3;color: #fff;padding: 10px;display: none;" id="tra-cuu" data-toggle="modal" data-target="#bang-tu-dien">
    tra cứu
</div>

<!-- Modal -->
<div id="bang-tu-dien" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Từ điển</h4>
      </div>
      <div class="modal-body" id="noi-dung-tra-tu">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

