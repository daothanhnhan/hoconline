<div class="phien-am-nghe">
          <?php if (!empty($phien_am_nghe_count)) { ?>

            <?php 
              $d3 = 0;
              foreach ($phien_am_nghe as $item) {
                $d3++;
              ?>
              <p><?= $d3 ?>. 

                <?php if (!empty($item['mp3'])) { ?>
                <audio controls="">
                  <source src="horse.ogg" type="audio/ogg">
                  <source src="/images/phien-am-nghe/<?= $item['mp3'] ?>" type="audio/mpeg">
                Your browser does not support the audio element.
                </audio>
                <?php } ?>

               (Đáp án: <input type="text" id="lam-cau-phien-am-nghe-<?= $item['id'] ?>"> <input type="button" class="accpt" id="nut-phien-am-nghe-<?= $item['id'] ?>" value="" data-set="1" onclick="phien_am_nghe(<?= $item['id'] ?>, '<?= $item['dap_an'] ?>')">)  です。</p>
              <?php } ?>

          <?php } ?>  
        </div>