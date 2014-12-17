<div class="container">
    <div class="row">

        <div class="area-top clearfix">
            <div class="pull-left header">
                <h3 class="title">
                    <i class="icon-edit"></i>
                    Stellenangebote
                </h3>
            </div>

        </div>
    </div>
</div>

<div class="container padded">
    <div class="row">

        <!-- Breadcrumb line -->

        <div id="breadcrumbs">
            <div class="breadcrumb-button blue">
                <span class="breadcrumb-label"><i class="icon-home"></i> Home</span>
                <span class="breadcrumb-arrow"><span></span></span>
            </div>



            <div class="breadcrumb-button">
                <span class="breadcrumb-label">
                    <i class="icon-edit"></i> Stellenangebote
                </span>
                <span class="breadcrumb-arrow"><span></span></span>
            </div>
        </div>
    </div>
</div>


<div class="col-md-6" style="width: 100%">
    <div class="box">
        <div class="box-header">
            <span class="title">Neues Stellenangebot erstellen</span>

        </div>
        <div class="box-content">
            <form class="fill-up">
                <div class="row">
                    <div class="col-lg-12">

                        <ul class="padded separate-sections">

                            <li class="input">
                                  <label>Titel:</label>
                                <input type="text" placeholder="Titel" id="neu_titel">
                            </li>

                            <li class="input">
                                  <label>Unterzeile:</label>
                                <input type="text" placeholder="Zusatzinfo" id="neu_unterzeile">
                            </li>

                            <li class="input">
                                  <label>Text:</label>
                                <textarea rows="8" name="neu_text"></textarea>
                            </li>
                              <script type="text/javascript">CKEDITOR.replace('neu_text', {skin: 'kama'});</script>
                        </ul>
                    </div>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-green" id="neu_btn"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Neues Stellenangebot anlegen</button>
                    <span id="loading_neu"></span>
                    <br>
                    <br>
                    <div class="alert alert-success" style="display: none" id="save_info_neu">
                        <button type="button" class="close" data-dismiss="alert"></button>
                        <strong>Gespeichert: </strong> Das neue Stellenangebot wurde erstellt.
                    </div>

                    <script>
                        $("#neu_btn").click(function(){
                                                     
                            $.ajax({
                                url: "<?= Yii::app()->baseUrl ?>/admin/NeuesStellenangebot",
                                data: { 
                                    titel: $("#neu_titel").val(), 
                                    unterzeile: $("#neu_unterzeile").val(), 
                                    text: CKEDITOR.instances["neu_text"].getData() },
                                type: "POST",
                                success: function(res){
                                    $("#loading_neu").fadeOut();
                                    $("#save_info_neu").fadeIn();
                                    setTimeout(function() {
                                        $("#save_info_neu").fadeOut();
                                    }, 2000);
                                },
                                beforeSend:  function(){
                                    $("#loading_neu").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                },
                                error: function(res){
                                    $("#loading_neu").html(res).fadeIn();
                                }
                            });
                            return false;

                        });    
                    </script>
                </div>
            </form>

        </div>
    </div>
</div>


<div class="container">
    <div class="row">

        <? 
            $i = 0;
            foreach ($content as $item) { ?>

            <div class="col-md-6" id="box_item_<?= $item->stellenangebote_id ?>">
                <div class="box">
                    <div class="box-header">
                        <span class="title"><?= $item->titel ?></span>

                    </div>
                    <div class="box-content">
                        <form class="fill-up">
                            <div class="row">
                                <div class="col-lg-12">

                                    <ul class="padded separate-sections" id="list_item_<?= $item->stellenangebote_id ?>">

                                        <li class="input">
                                              <label>Titel:</label>
                                            <input type="text" value="<?= $item->titel ?>" id="titel_<?= $item->stellenangebote_id ?>">
                                        </li>

                                        <li class="input">
                                              <label>Unterzeile:</label>
                                            <input type="text" value="<?= $item->unterzeile ?>" id="unterzeile_<?= $item->stellenangebote_id ?>">
                                        </li>

                                        <li class="input">
                                              <label>Text:</label>
                                            <textarea rows="8" name="text_<?= $item->stellenangebote_id ?>"><?= $item->text ?></textarea>
                                        </li>

                                        <script type="text/javascript">CKEDITOR.replace('text_<?= $item->stellenangebote_id ?>', {skin: 'kama'});</script>
                                    </ul>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-blue" id="save_btn_<?= $item->stellenangebote_id ?>"><i class="icon-save"></i>&nbsp;&nbsp;&nbsp;Änderungen speichern</button>
                                <span class="pull-right"><button type="submit" class="btn btn-red" id="del_btn_<?= $item->stellenangebote_id ?>"><i class="icon-remove-sign"></i>&nbsp;&nbsp;&nbsp;Löschen</button></span> 

                                <span id="loading_<?= $item->stellenangebote_id ?>"></span>
                                <br>
                                <br>
                                <div class="alert alert-success" style="display: none" id="save_info_<?= $item->stellenangebote_id ?>">
                                    <button type="button" class="close" data-dismiss="alert"></button>
                                    <strong>Gespeichert: </strong> Der Datensatz wurde geändert.
                                </div>
                                
                                <div class="alert alert-success" style="display: none" id="del_info_<?= $item->stellenangebote_id ?>">
                                    <button type="button" class="close" data-dismiss="alert"></button>
                                    <strong>Gelöscht: </strong> Der Datensatz wurde gelöscht.
                                </div>

                                <script>
                                    $("#save_btn_<?= $item->stellenangebote_id ?>").click(function(){
                                                         
                                        $.ajax({
                                            url: "<?= Yii::app()->baseUrl ?>/admin/UpdateStellenangebot",
                                            data: { stellenangebot_id: <?= $item->stellenangebote_id ?>, 
                                                titel: $("#titel_<?= $item->stellenangebote_id ?>").val(), 
                                                unterzeile: $("#unterzeile_<?= $item->stellenangebote_id ?>").val(), 
                                                text: CKEDITOR.instances["text_<?= $item->stellenangebote_id ?>"].getData() },
                                            type: "POST",
                                            success: function(res){
                                                $("#loading_<?= $item->stellenangebote_id ?>").fadeOut();
                                                $("#save_info_<?= $item->stellenangebote_id ?>").fadeIn();
                                                setTimeout(function() {
                                                    $("#save_info_<?= $item->stellenangebote_id ?>").fadeOut();
                                                }, 2000);
                                            },
                                            beforeSend:  function(){
                                                $("#loading_<?= $item->stellenangebote_id ?>").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                            },
                                            error: function(res){
                                                $("#loading_<?= $item->stellenangebote_id ?>").html(res).fadeIn();
                                            }
                                        });
                                        return false;

                                    });    
                                    
                                     $("#del_btn_<?= $item->stellenangebote_id ?>").click(function(){
                                                         
                                        $.ajax({
                                            url: "<?= Yii::app()->baseUrl ?>/admin/DeleteStellenangebot",
                                            data: { stellenangebot_id: <?= $item->stellenangebote_id ?> },
                                            type: "POST",
                                            success: function(res){
                                                $("#loading_<?= $item->stellenangebote_id ?>").fadeOut();
                                                $("#list_item_<?= $item->stellenangebote_id ?>").fadeOut();
                                                $("#del_info_<?= $item->stellenangebote_id ?>").fadeIn();
                                                setTimeout(function() {
                                                    $("#del_info_<?= $item->stellenangebote_id ?>").fadeOut();
                                                    $("#box_item_<?= $item->stellenangebote_id ?>").fadeOut();
                                                }, 2000);
                                            },
                                            beforeSend:  function(){
                                                $("#loading_<?= $item->stellenangebote_id ?>").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                            },
                                            error: function(res){
                                                $("#loading_<?= $item->stellenangebote_id ?>").html(res).fadeIn();
                                            }
                                        });
                                        return false;

                                    });    
                                </script>

                            </div>
                        </form>

                    </div>
                </div>
            </div>

        <? 
            $i++;
            if($i % 2 == 0){
                echo '</div><div class="row">';

            }
        
        } 
        
        ?>
    </div>
</div>