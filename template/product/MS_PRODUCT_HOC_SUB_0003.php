<div class="phien-am">
          <?php if (!empty($phien_am_count)) { ?>
          <table class="table table-striped">
            <thead>
              <tr>
                <th>STT</th>
                <th>Hán Tự</th>
                <th>Hiragana</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $d2 = 0;
              foreach ($phien_am as $item) {
                $d2++;
              ?>
              <tr>
                <td><?= $d2 ?></td>
                <td><?= $item['han_tu'] ?></td>
                <td><input type="text" name="" id="lam-cau-phien-am-<?= $item['id'] ?>" onkeyup="phien_am(<?= $item['id'] ?>, '<?= $item['dap_an'] ?>')"></td>
                <td><span class="dap-an" id="dap-an-phien-am-<?= $item['id'] ?>" style="display: none;">Đáp án: <?= $item['dap_an'] ?></span></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
          <?php } ?>
        </div>