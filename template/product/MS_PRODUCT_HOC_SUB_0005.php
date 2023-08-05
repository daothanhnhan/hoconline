<div class="dien-tu">
          <?php if (!empty($dien_tu_count)) { ?>
          <?php foreach ($nhom_dien_tu as $nhom) { ?>
            <?php $dien_tu = $action->getList('dien_tu', 'nhom_dien_tu_id', $nhom['id'], 'id', 'asc', '', '', ''); ?>
          <p><?= $nhom['name'] ?></p>
            <?php 
              $d4 = 0;
              $k1 = 0;
              foreach ($dien_tu as $item) {
                $d4++;
              ?>
              <p><?= $d4 ?>. 
                <?php if (empty($item['dap_an_2'])) { ?>

                  <?= $item['text_1'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+1 ?>" onkeyup="dien_tu(<?= $k1+1 ?>, '<?= $item['dap_an_1'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+1 ?>" style="display: none;">Đáp án:<?= $item['dap_an_1'] ?></span>) <?= $item['text_2'] ?>

                <?php $k1 = $k1 + 1; } else { ?>

                  <?= $item['text_1'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+1 ?>" onkeyup="dien_tu(<?= $k1+1 ?>, '<?= $item['dap_an_1'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+1 ?>" style="display: none;">Đáp án:<?= $item['dap_an_1'] ?></span>) <?= $item['text_2'] ?> (<input type="text" name="" id="dien-tu-input-<?= $k1+2 ?>" onkeyup="dien_tu(<?= $k1+2 ?>, '<?= $item['dap_an_2'] ?>')"><span class="dap-an-dien-tu" id="dien-tu-kq-<?= $k1+2 ?>" style="display: none;">Đáp án:<?= $item['dap_an_2'] ?></span>) <?= $item['text_3'] ?>

                <?php $k1 = $k1 + 2; } ?>
              </p>
              <?php } ?>
          <?php } ?>

          <?php } ?>  
        </div>