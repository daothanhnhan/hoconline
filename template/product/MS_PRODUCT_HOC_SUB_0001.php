<div class="noi-dung-tab-phu">
          <?php foreach ($noi_dung_tab_phu as $tab_phu) { ?>
          <div class="khung1"><?= $tab_phu['note'] ?></div>
          <?php if (!empty($tab_phu['dich'])) { ?>
          <p class="con-tro nhom-text-dap-an-dich" onclick="noi_dung_dich(<?= $tab_phu['id'] ?>)"><span>Click đây để dịch</span></p>
      		<?php } ?>
          <div class="khung1" id="dich-tab-phu-<?= $tab_phu['id'] ?>" style="display: none;"><?= $tab_phu['dich'] ?></div>
          <?php } ?>
        </div>