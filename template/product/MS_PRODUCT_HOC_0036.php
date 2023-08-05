<?php 
  function khach_quyen () {
    global $conn_vn;
    global $action;
    $ip = $_SERVER['REMOTE_ADDR'];
    $ngay = date('Y-m-d');//echo $ngay;die;
    $bai = $_GET['trang'];

    $khach = $action->getDetail('khach_quyen', 'ip', $ip);
    if (empty($khach)) {
      $giao_trinh_bai = array($bai);
      $giao_trinh_bai = json_encode($giao_trinh_bai);
      $giao_trinh_bai = mysqli_real_escape_string($conn_vn, $giao_trinh_bai);
      $sql = "INSERT INTO khach_quyen (ip, ngay, giao_trinh_bai) VALUES ('$ip', '$ngay', '$giao_trinh_bai')";//echo $sql;
      $result = mysqli_query($conn_vn, $sql);
    } else {
      $khach_id = $khach['id'];
      if ($ngay == $khach['ngay']) {
        $giao_trinh_bai = json_decode($khach['giao_trinh_bai']);var_dump($giao_trinh_bai);
        $giao_trinh_bai_count = count($giao_trinh_bai);
        if ($giao_trinh_bai_count >= 5) {
          echo '<script>alert("Bạn chỉ được xem 5 bài");window.location.href="/"</script>';
        }

        
        if (!in_array($bai, $giao_trinh_bai)) {
          $giao_trinh_bai[] = $bai;
          $giao_trinh_bai = json_encode($giao_trinh_bai);
          $giao_trinh_bai = mysqli_real_escape_string($conn_vn, $giao_trinh_bai);
          $sql = "UPDATE khach_quyen SET giao_trinh_bai = '$giao_trinh_bai' WHERE id = $khach_id";
          $result = mysqli_query($conn_vn, $sql);
        } 
      } else {
        $giao_trinh_bai = array($bai);
        $giao_trinh_bai = json_encode($giao_trinh_bai);
        $giao_trinh_bai = mysqli_real_escape_string($conn_vn, $giao_trinh_bai);
        $sql = "UPDATE khach_quyen SET ngay = '$ngay', giao_trinh_bai = '$giao_trinh_bai' WHERE id = $khach_id";
        $result = mysqli_query($conn_vn, $sql);
      }
    }
  }

  function bai_vip_ngay () {
    global $conn_vn;
    $action = new action();
    $now = date('Y-m-d');
    $user_id = $_SESSION['user_id_gbvn'];
    $user = $action->getDetail('user', 'user_id', $user_id);//var_dump($user);
    $ngay_het_han = $user['expiration_date'];
    if ($now > $ngay_het_han) {
      khach_quyen();
    }
  }

  if ($quyen_vip != 1) {
    khach_quyen();
  } else {
    bai_vip_ngay();
  }
  
// var_dump($quyen_vip);
  //////////////////////////
	$tab_chinh = $action->getList('giao_trinh_tab_chinh', 'giao_trinh_chinh_bai_id', $_GET['trang'], 'id', 'asc', '', '', '');//var_dump($tab_chinh);
	$giao_trinh_chinh_bai= $action->getDetail('giao_trinh_chinh_bai', 'id', $_GET['trang']);//var_dump($giao_trinh_chinh_bai);
  $list_bai = $action->getList("giao_trinh_chinh_bai", "giao_trinh_chinh_id", $giao_trinh_chinh_bai['giao_trinh_chinh_id'],"sort","asc", '', '', "");
  // var_dump($list_bai);
  $noi_dung = $giao_trinh_chinh_bai['note'];

  $so_tab_phu = 0;
  foreach ($tab_chinh as $item) {
    $tab_phu = $action->getList('giao_trinh_tab_phu', 'giao_trinh_tab_chinh_id', $item['id'], 'id', 'asc', '', '', '');
    foreach ($tab_phu as $item_1) {
      $so_tab_phu++;
    }
  }
  // var_dump($so_tab_phu);
?>

<style>

</style>
<style>

</style>
<style>

</style>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
<div class="container">
<div class="col-md-12">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#danh-sach-bai">Danh sách bài</button>
  <h2 style="font-size: 20px;text-align: center;font-weight: bold;"><?= $giao_trinh_chinh_bai['name'] ?></h2>
  <div class="noi-dung-bai" style="display: <?= empty($noi_dung) ? 'none' : 'block'; ?>">
    <div class="noi-dung">
      <?= $noi_dung ?>
    </div>
    <p id="nut-hien-dich">Click đây để dịch</p>
    <div class="dich" style="display: none;">
      <?= $giao_trinh_chinh_bai['dich'] ?>
    </div>
  </div>
  <ul class="nav nav-tabs <?= $so_tab_phu==1 ? 'hidden' : '' ?>">
  	<?php 
  	$d = 0;
  	foreach ($tab_chinh as $item_chinh) { 
  		$d++;
      $tab_chon = $action->getDetail('tab_chon', 'id', $item_chinh['tab_chon_id']);
  	?>
    <li class="<?= $d==1 ? 'active' : '' ?>">
      <a href="#tab-<?= $d ?>" style="text-align: center;">
        <img src="/images/<?= $tab_chon['image'] ?>" alt="" width="100"><br>
        <?= $tab_chon['name'] ?>
        
      </a>
    </li>
    <?php } ?>
  </ul>

  <div class="tab-content">
  	<?php 
  	$d1 = 0;
  	foreach ($tab_chinh as $item_chinh) { 
  		$d1++;//echo $d;
  		$tab_phu = $action->getList('giao_trinh_tab_phu', 'giao_trinh_tab_chinh_id', $item_chinh['id'], 'id', 'asc', '', '', '');
  	?>
    <div id="tab-<?= $d1 ?>" class="tab-pane fade <?= $d1==1 ? 'in active' : '' ?>">
      
      <ul class="nav nav-tabs  <?= $so_tab_phu==1 ? 'hidden' : '' ?>">
	    <?php 
	    $k = 0;
	    foreach ($tab_phu as $item_phu) {
	    	$k++;
	    ?>
	    <li class="<?= $k==1 ? 'active' : '' ?>"><a href="#tabsub-<?= $k ?>-<?= $d1 ?>"><?= $item_phu['name'] ?></a></li>
	    <?php } ?>
	  </ul>
	  <div class="tab-content">
	  	<?php 
	    $k = 0;
	    foreach ($tab_phu as $item_phu) {
	    	$k++;
        $cau_hoi_tab = $action->getList('cau_hoi_tab', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $noi_dung_tab_phu = $action->getList('noi_dung_tab_phu', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $phien_am = $action->getList('phien_am', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $phien_am_count = count($phien_am);
        $phien_am_nghe = $action->getList('phien_am_nghe', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $phien_am_nghe_count = count($phien_am_nghe);
        $dien_tu = $action->getList('dien_tu', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $dien_tu_count = count($dien_tu);

        $nhom_dien_tu = $action->getList('nhom_dien_tu', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');//var_dump($nhom_dien_tu)
        // $nhom_cau_hoi_tab = $action->getList('nhom_cau_hoi_tab', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $tab_con = $action->getList('tab_con', 'giao_trinh_tab_phu_id', $item_phu['id'], 'id', 'asc', '', '', '');
        $tab_con_count = count($tab_con);
	    ?>
	    <div id="tabsub-<?= $k ?>-<?= $d1 ?>" class="mau-khung tab-pane fade <?= $k==1 ? 'in active' : '' ?>">
        <div class="noi-dung-tab-phu">
            <?= $item_phu['note'] ?>
        </div>
	      <ul class="nav nav-tabs" style="display: flex;justify-content: center;">
          <?php foreach ($tab_con as $tab_con_item) { ?>
          <li>
            <a href="#tab-con-<?= $tab_con_item['id'] ?>" style="text-align: center;">
              <img src="/images/<?= $tab_con_item['image'] ?>" alt="" width="100"><br>
              <?= $tab_con_item['name'] ?>
            </a>
          </li>
          <?php } ?>
        </ul>

        <?php if (!empty($tab_con_count)) { ?>
            <div class="tab-content">
            <?php 
            $d2 = 0;
            foreach ($tab_con as $tab_con_item) { 
              $d2++
            ?>
            <div id="tab-con-<?= $tab_con_item['id'] ?>" class="tab-pane fade <?= $d2==1 ? 'in active' : '' ?>">
              <?php //echo $tab_con_item['id'] ?>
              <?php 
              for ($i=1;$i<=5;$i++) {
                if ($item_phu['noi_dung'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0001.php";
                }
                if ($item_phu['cau_hoi'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0002.php";
                }
                if ($item_phu['phien_am'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0003.php";
                }
                if ($item_phu['phien_am_nghe'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0004.php";
                }
                if ($item_phu['dien_tu'] == $i) {
                  // include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0005.php";
                }
              }
              ?>
            </div>
        <?php } ?>
        </div>
        <?php } else { ?>
              <?php 
              for ($i=1;$i<=5;$i++) {
                if ($item_phu['noi_dung'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0001.php";
                }
                if ($item_phu['cau_hoi'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0002.php";
                }
                if ($item_phu['phien_am'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0003.php";
                }
                if ($item_phu['phien_am_nghe'] == $i) {
                  include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0004.php";
                }
                if ($item_phu['dien_tu'] == $i) {
                  // include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0005.php";
                }
              }
              ?>
        <?php } ?>


        <?php //include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0001.php";?>
        <?php //include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0002.php";?>
	      <?php //include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0003.php";?>
        <?php //include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0004.php";?>
        <?php //include DIR_PRODUCT."MS_PRODUCT_HOC_SUB_0005.php";?>
        
	    </div>
	    <?php } ?>
	  </div>

    </div>
    <?php } ?>
    
  </div>
</div>
<div class="col-md-3 menu-bai hidden">
  <?php 
  $d = 0;
  foreach ($list_bai as $item) { 
    $d++;
  ?>
    <p><a href="/giao-trinh-chinh-bai/<?= $item['id'] ?>"><?= $item['name'] ?></a></p>
  <?php } ?>
</div>
</div>

<div id="danh-sach-bai" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Danh sách bài</h4>
      </div>
      <div class="modal-body menu-bai">
        <?php 
        $d = 0;
        foreach ($list_bai as $item) { 
          $d++;
        ?>
          <p><a href="/giao-trinh-chinh-bai/<?= $item['id'] ?>"><?= $item['name'] ?></a></p>
        <?php } ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

<script>
$(document).ready(function(){
  $(".nav-tabs a").click(function(){
    $(this).tab('show');
  });
});

$(document).ready(function(){
  $(".nav-tabs-1 a").click(function(){
    $(this).tab('show');
  });
});

function check_cau_hoi_tab (cau_so, chon, stt) {
        // alert(cau_so);
        // alert(chon);
        const xhttp = new XMLHttpRequest();
          xhttp.onload = function() {
            document.getElementById("cauhoi_"+cau_so).innerHTML = this.responseText;
                ket_qua(<?= $count ?>);
            }
          xhttp.open("GET", "/functions/ajax/cau_hoi_tab.php?cau="+cau_so+"&chon="+chon+"&stt="+stt, true);
          xhttp.send();
    }
</script>

<script>
$("#nut-hien-dich").click(function(){
  $(".dich").toggle();
});
</script>

<script>
  function noi_dung_dich (ma) {
    // alert();
    $("#dich-tab-phu-"+ma).toggle();
  }
</script>

<script>
  function phien_am (id, dap_an) {
    var text = document.getElementById("lam-cau-phien-am-"+id).value;
    if (event.keyCode === 13) {
        // alert(text);
        if (text == dap_an) {
          document.getElementById("lam-cau-phien-am-"+id).style.color = 'green';
        } else {
          document.getElementById("lam-cau-phien-am-"+id).style.color = 'red';
          document.getElementById("dap-an-phien-am-"+id).style.display = 'inline';
        }

        var id1 = id + 1;
        document.getElementById("lam-cau-phien-am-"+id1).focus();
    }
  }
</script>

<script>
  function phien_am_nghe (id, dap_an) {
    var text = document.getElementById("lam-cau-phien-am-nghe-"+id).value;
    // alert(text);
    document.getElementById("nut-phien-am-nghe-"+id).classList.remove("accpt");
    if (text == dap_an) {
      document.getElementById("nut-phien-am-nghe-"+id).classList.add("dungroi");
    } else {
      document.getElementById("nut-phien-am-nghe-"+id).classList.add("sairoi");
    }
    document.getElementById("nut-phien-am-nghe-"+id).setAttribute("title", dap_an);
  }
</script>

<script>
  function dien_tu (stt, dap_an) {
    var text = document.getElementById("dien-tu-input-"+stt).value;
    if (event.keyCode === 13) {
        // alert(text);
        if (text == dap_an) {
          document.getElementById("dien-tu-input-"+stt).style.color = 'green';
        } else {
          document.getElementById("dien-tu-input-"+stt).style.color = 'red';
          document.getElementById("dien-tu-kq-"+stt).style.display = 'inline';
        }

        var id1 = stt + 1;
        document.getElementById("dien-tu-input-"+id1).focus();
    }
  }
</script>