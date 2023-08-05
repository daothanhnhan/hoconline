<div class="dien-tu">
  <?php $k1 = 0; ?>
  
    <?php 
    if (!empty($tab_con_count)) {
      $nhom_dien_tu = $action->getList('nhom_dien_tu', 'tab_con_id', $tab_con_item['id'], 'id', 'asc', '', '', '');
    }
    
    $nhom_d = 0;
    // var_dump($nhom_dien_tu);
    foreach ($nhom_dien_tu as $nhom) { 
      $nhom_d++;
    ?>
        <?php $cau_hoi_tab = $action->getList('cau_hoi_tab', 'nhom_cau_hoi_tab_id', $nhom['id'], 'sort', 'asc', '', '', ''); ?>
        <p class="nhom <?= $nhom_d==1 ? '' : 'nhom-duoi' ?>"><?= $nhom['name'] ?></p>
          <?php 
                            $d = 0;
                            foreach ($cau_hoi_tab as $item) { 
                                $d++;
                                $text=str_ireplace('<p>','',$item['cau_hoi']);
                                $text=str_ireplace('</p>','',$text);
                                // $text = $item['cau_hoi'];
                            ?>
                            <div class="clearfix chanle cauhoi-wrap" id="cauhoi_<?= $item['id'] ?>">
                                <span class="cauhoi jp-22"><?= $d ?>. <?= $text ?></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_1" onclick="check_cau_hoi_tab(<?= $item['id'] ?>, 1, <?= $d ?>)"><?= $item['cau_1'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_2" onclick="check_cau_hoi_tab(<?= $item['id'] ?>, 2, <?= $d ?>)"><?= $item['cau_2'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_3" onclick="check_cau_hoi_tab(<?= $item['id'] ?>, 3, <?= $d ?>)"><?= $item['cau_3'] ?></span></span>
                                <span class="frame4"><span class="answer jp-22" rel="cauhoi1_0_1" id="cauhoi1_0_1_4" onclick="check_cau_hoi_tab(<?= $item['id'] ?>, 4, <?= $d ?>)"><?= $item['cau_4'] ?></span></span>
                            </div>
                            <?php } ?>

            <?php $dien_tu = $action->getList('dien_tu', 'nhom_dien_tu_id', $nhom['id'], 'sort', 'asc', '', '', ''); ?>
            <?php 
              $d4 = 0;
              
              foreach ($dien_tu as $item) {
                $d4++;
              ?>
              <p class="dong-dien-tu"><?= $d4 ?>. 
                <?php if (empty($item['dap_an_2'])) { ?>

                  <?= $item['text_1'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+1 ?>" onkeyup="dien_tu(<?= $k1+1 ?>, '<?= $item['dap_an_1'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+1 ?>" style="display: none;">Đáp án:<?= $item['dap_an_1'] ?></span>) <?= $item['text_2'] ?>

                <?php $k1 = $k1 + 1; } else { ?>

                  <?= $item['text_1'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+1 ?>" onkeyup="dien_tu(<?= $k1+1 ?>, '<?= $item['dap_an_1'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+1 ?>" style="display: none;">Đáp án:<?= $item['dap_an_1'] ?></span>) <?= $item['text_2'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+2 ?>" onkeyup="dien_tu(<?= $k1+2 ?>, '<?= $item['dap_an_2'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+2 ?>" style="display: none;">Đáp án:<?= $item['dap_an_2'] ?></span>) <?= $item['text_3'] ?>

                <?php $k1 = $k1 + 2; } ?>
              </p>
              <?php } ?>
          <?php if (!empty($nhom['note'])) { ?>
            <?php if (empty($tab_con_count)) { ?>
          <p class="nhom-text-dap-an-dich"><span onclick="nhom_noi_dung_dap_an('<?= $nhom_d.'-'.$tab_con_item['id'] ?>')">Đáp án & Dịch</span></p>
            <?php } ?>
          <?php } ?>
          <div class="noi-dung-dan-ap-dich" style="display: <?= $tab_con_count==0 ? 'none' : 'block'; ?>;" id="nhom-noi-dung-<?= $nhom_d.'-'.$tab_con_item['id'] ?>">
            <?= $nhom['note'] ?>
          </div>
        <?php } ?>
        </div>

<script>
  function nhom_noi_dung_dap_an (nhom_d) {
    var noi_dung_dap_an_show = document.getElementById('nhom-noi-dung-'+nhom_d).style.display;
    // alert(noi_dung_dap_an_show);
    if (noi_dung_dap_an_show == 'none') {
      document.getElementById('nhom-noi-dung-'+nhom_d).style.display = 'block';
    } else {
      document.getElementById('nhom-noi-dung-'+nhom_d).style.display = 'none';
    }

  }
</script>