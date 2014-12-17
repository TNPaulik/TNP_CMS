<div class="container">
    <div class="row">

        <div class="area-top clearfix">
            <div class="pull-left header">
                <h3 class="title">
                    <i class="icon-edit"></i>
                    Pflegedienst
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
                    <i class="icon-edit"></i> Pflegedienst
                </span>
                <span class="breadcrumb-arrow"><span></span></span>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">

        <? foreach ($content as $item) { ?>

            <div class="col-md-6">
                <div class="box">
                    <div class="box-header">
                        <span class="title"><?= $item->titel ?></span>
                    </div>
                    <div class="box-content">
                        <form class="fill-up">
                            <div class="row">
                                <div class="col-lg-12">

                                    <ul class="padded separate-sections">

                                        <li class="input">
                                              <label>Titel:</label>
                                            <input type="text" value="<?= $item->titel ?>" id="titel_<?= $item->content_id ?>">
                                        </li>

                                        <li class="input">
                                              <label>Text:</label>
                                            <textarea rows="8" name="text_<?= $item->content_id ?>"><?= $item->text ?></textarea>
                                        </li>

                                        <script type="text/javascript">CKEDITOR.replace('text_<?= $item->content_id ?>', {skin: 'kama'});</script>
                                    </ul>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-blue" id="save_btn_<?= $item->content_id ?>"><i class="icon-save"></i>&nbsp;&nbsp;&nbsp;Änderungen speichern</button>
                                <span id="loading_<?= $item->content_id ?>"></span>

                                <br>
                                <br>
                                <div class="alert alert-success" style="display: none" id="save_info_<?= $item->content_id ?>">
                                    <button type="button" class="close" data-dismiss="alert"></button>
                                    <strong>Gespeichert: </strong> Der Datensatz wurde geändert.
                                </div>

                                <script>
                                    $("#save_btn_<?= $item->content_id ?>").click(function(){
                                                 
                                        $.ajax({
                                            url: "<?= Yii::app()->baseUrl ?>/admin/UpdateContent",
                                            data: { content_id: <?= $item->content_id ?>, 
                                                titel: $("#titel_<?= $item->content_id ?>").val(), 
                                                text: CKEDITOR.instances["text_<?= $item->content_id ?>"].getData() },
                                            type: "POST",
                                            success: function(res){
                                                $("#loading_<?= $item->content_id ?>").fadeOut();
                                                $("#save_info_<?= $item->content_id ?>").fadeIn();
                                                setTimeout(function() {
                                                    $("#save_info_<?= $item->content_id ?>").fadeOut();
                                                }, 2000);
                                            },
                                            beforeSend:  function(){
                                                $("#loading_<?= $item->content_id ?>").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                            },
                                            error: function(res){
                                                $("#loading_<?= $item->content_id ?>").html(res).fadeIn();
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

        <? } ?>
    </div>
</div>