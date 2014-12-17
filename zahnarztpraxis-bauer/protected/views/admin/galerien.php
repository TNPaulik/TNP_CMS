<div class="container">
    <div class="row">

        <div class="area-top clearfix">
            <div class="pull-left header">
                <h3 class="title">
                    <i class="icon-edit"></i>
                    Galerien
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
                    <i class="icon-edit"></i> Galerien
                </span>
                <span class="breadcrumb-arrow"><span></span></span>
            </div>
        </div>
    </div>
</div>


<? if (isset($new_saved)) { ?>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="alert alert-success"id="save_info">
                    <button type="submit" class="close" data-dismiss="alert"></button>
                    <strong>Gespeichert: </strong>Der Datensatz wurde erfolgreich angelegt.
                </div>
            </div>
        </div>
    </div>
<? } ?>
<? if (isset($updated)) { ?>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="alert alert-success"id="save_info">
                    <button type="submit" class="close" data-dismiss="alert"></button>
                    <strong>Gespeichert: </strong>Der Datensatz wurde geändert.
                </div>
            </div>
        </div>
    </div>
<? } ?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Neue Galerie erstellen</span>

                </div>
                <div class="box-content" >
                    <form class="fill-up" enctype="multipart/form-data" method="post">
                        <div class="row">
                            <div class="col-lg-12">

                                <ul class="padded separate-sections">
                                    <li class="input">
                                        <label>Titelbild hochladen:</label>
                                        <div class="uploader hover"><input type="file" name="img"><span class="filename" style="-webkit-user-select: none;">Bild</span><span class="action" style="-webkit-user-select: none;">+</span></div>
                                    </li>


                                    <li class="input">
                                        <label>Titel:</label>
                                        <input type="text" value="" name="titel">
                                    </li>

                                    <li class="input">
                                        <label>Datum:</label>
                                        <?
                                        $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                            'name' => 'datum',
                                            'language' => 'de',
                                            'options' => array(
                                                'showAnim' => 'fold',
                                                'dateFormat' => 'dd.mm.yy'
                                            ),
                                            'htmlOptions' => array(
                                                'id' => 'datum_new'
                                            ),
                                        ));
                                        ?>
                                    </li>

                                    <li class="input">
                                        <label>Zielseite:</label>
                                        <select class="chzn-select" name="seite" style="border:1px solid #D7D7D7; background: #FDFDFD; margin-bottom: 5px; height: 25px;">
                                            <option selected value="0">Zielseite auswählen</option>
                                            <option value="tagespflege">tagespflege</option>
                                            <option value="pflegedienst">pflegedienst</option>
                                            <option value="pflegeueberleitung">pflegeueberleitung</option>
                                        </select>
                                    </li>

                                    <li class="input">
                                        <label>Text:</label>
                                        <input type="text" value="" name="text">
                                    </li>
                                </ul>
                            </div>

                        </div>
                        <div class="form-actions">
                            <input type="hidden" name="new_item">
                            <button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Neue Galerie anlegen</button>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <? foreach ($content as $item) { ?>
        <div class="row">
            <div class="col-md-12" id="akt_box_item_<?= $item->galerie_id ?>">
                <div class="box">
                    <div class="box-header">
                        <span class="title"><?= $item->titel ?> - <?= $item->datum ?></span>
                    </div>
                    <div class="box-content" style="padding:20px;">
                        <form class="fill-up" enctype="multipart/form-data" method="post">
                            <div class="row">
                                <div class="col-lg-4">
                                    <ul class="padded separate-sections" style="outline:1px dotted #CCC; padding: 20px 20px 10px 20px;" id="akt_list_item_<?= $item->galerie_id ?>">
                                        <li>
                                            <img src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $item->bild_id ?>.jpg" width="100%"> 
                                        </li>
                                        <li class="input">
                                            <div class="row">
            					<div class="col-lg-6">
                                                    <label>Neues Titelbild hochladen:</label>
                                                    <div class="uploader hover"><input type="file" name="img"><span class="filename" style="-webkit-user-select: none;">Neues Bild</span><span class="action" style="-webkit-user-select: none;">+</span></div>
                                                </div>
            					<div class="col-lg-6">
                                                    <label>oder:</label>
                                                    <input type="hidden" name="title_pic_from_pool_<?= $item->galerie_id ?>" id="title_pic_from_pool_<?= $item->galerie_id ?>" value="">
                                                    <span id="title_pic_pool_<?= $item->galerie_id ?>"></span>

                                                    <br>
                                                    <a href="#myModal" role="button" class="btn btn-block btn-primary change_title_pic" data-toggle="modal" galerie="<?= $item->galerie_id ?>">Bestehendes Bild auswählen</a>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-7">
                                    <ul class="padded separate-sections" id="akt_list_item_<?= $item->galerie_id ?>">
                                        <li class="input">
                                            <label>Titel:</label>
                                            <input type="text" value="<?= $item->titel ?>" name="titel">
                                        </li>

                                        <li class="input">
                                            <label>Datum:</label>
                                            <?
                                            $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                                                'name' => 'datum',
                                                'language' => 'de',
                                                'value' => date("d.m.Y", strtotime($item->datum)),
                                                'options' => array(
                                                    'showAnim' => 'fold',
                                                    'dateFormat' => 'dd.mm.yy'
                                                ),
                                                'htmlOptions' => array(
                                                     'id' => 'datum_'. $item->galerie_id
                                                ),
                                            ));
                                            ?>
                                        </li>

                                        <li class="input">
                                            <label>Seite:</label>
                                            <input type="text" value="<?= $item->seite ?>" name="seite">
                                        </li>
                                       <li class="input">
                                            <label>Text:</label>
                                            <textarea rows="4" name="text"><?= $item->text ?></textarea>
                                            <input type="hidden" name="update">
                                            <input type="hidden" name="id" value="<?= $item->galerie_id ?>">
                                        </li>

                                    </ul>
                                </div>
                            </div>
                            <div class="row" style="padding-top:10px;">
                                <div class="col-lg-12">
                                    <ul class="padded separate-sections" style="outline:1px dotted #CCC; padding: 20px;" id="akt_list_item_<?= $item->galerie_id ?>">
                                        <li class="input">
<?
                                            if(isset($content_bilder[$item->galerie_id])){
                                                if(count($content_bilder[$item->galerie_id]) >= 1){
?>
                                                    <label><?=count($content_bilder[$item->galerie_id])?> Bilder in der Galerie:</label>
<?
                                                }
                                                else{
?>
                                                    <label>Noch keine Bilder in der Galerie!</label>
<?
                                                }
                                            }
?>
                                            <div class="row">
<?
                                            if(isset($content_bilder[$item->galerie_id])){
                                                if(count($content_bilder[$item->galerie_id]) >= 1){
                                                    $i = 0;
                                                    foreach ($content_bilder[$item->galerie_id] as $bild) {
?>
                                                        <div id="pic_item_<?= $bild->bilder_id ?>" class="col-lg-2" style="padding-bottom:20px;">
                                                            <div style="padding:10px; outline:1px dotted #CCC;">
                                                                <div style="min-height:110px;"><img style="max-width:100%; max-height: 100px;" src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $bild->bilder_id ?>.jpg"></div>
                                                                <div><button class="btn btn-block btn-red del-pic-btn" id="<?= $item->galerie_id.'-'.$bild->bilder_id ?>"><i class="icon-remove-sign"></i>&nbsp;&nbsp;&nbsp;Löschen</button></div>
                                                            </div>
                                                        </div>
<? 
                                                        $i++;
                                                        if($i % 6 == 0){
                                                            echo '</div><div class="row">';

                                                        }
                                                    }
                                                }
                                            }
?>                                            
                                            </div>
                                            <div>
                                                <div><span id="pics_selected_<?= $item->galerie_id ?>"></span></div>
                                                <input type="hidden" name="selected_pics_<?= $item->galerie_id ?>" id="selected_pics_<?= $item->galerie_id ?>" value="">

                                                <!-- overlay für bilder hinzufügen -->
                                                <a href="#myModal" role="button" class="btn btn btn-primary pics_btn" data-toggle="modal" galerie="<?= $item->galerie_id ?>">Klick, um Bilder hinzuzufügen</a>
                                                <br>
                                                <br>
                                                <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                        <h3 id="myModalLabel">Bilder auswählen</h3>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div id="pic_content"></div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn btn-primary" data-dismiss="modal" aria-hidden="true">Schließen</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <script>
                                        $(".pics_btn").click(function(){
                                            var galerie_id = $(this).attr("galerie");
                                            $.ajax({
                                                url: "<?= Yii::app()->baseUrl ?>/admin/GetBilder",
                                                type: "POST",
                                                dataType: "json",
                                                success: function(res){
                                                    var content = "";
                                                    $.each(res, function(i, item){
                                                        content += "<img onclick='addPic(this)' name='"+ galerie_id +"' id='bild_"+item.bild_id+"' src='<?= Yii::app()->baseUrl ?>/img/site/content/"+item.bild_id+".jpg' class='pic-listet'>";
                                                    });
                                                    $("#pic_content").html(content).fadeIn();
                                                },
                                                beforeSend:  function(){
                                                    $("#pic_content").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                                },
                                                error: function(res){
                                                    $("#pic_content").html(res).fadeIn();
                                                }
                                            });
                                        });

                                        function addPic(item){
                                            if ($("#"+item.id).hasClass("pic_selectet")) // bild bereits ausgewählt
                                                $("#"+item.id).removeClass('pic_selectet');

                                            else{
                                                $("#"+item.id).addClass('pic_selectet');
                                                $("#pics_selected_"+item.name).append(item.id+" "); // die galerie ID jeweils bveim span field dazu, das ja mehere gibt. galerieID ist das name attribut
                                                //$("#pics_selected_"+item.name).append('<img src="<?= Yii::app()->baseUrl ?>/img/site/content/'+item.id+'.jpg"> '); // die galerie ID jeweils bveim span field dazu, das ja mehere gibt. galerieID ist das name attribut

                                                var current_pics = $("#selected_pics_" + item.name).val(); // das zeug noch als hidden field, damit mans auch verarbeiten kann...
                                                $("#selected_pics_"+item.name).val(current_pics + item.id +" ");
                                            }
                                        };

                                        $(".change_title_pic").click(function(){
                                            var galerie_id = $(this).attr("galerie");
                                            $.ajax({
                                                url: "<?= Yii::app()->baseUrl ?>/admin/GetBilder",
                                                type: "POST",
                                                dataType: "json",
                                                success: function(res){
                                                    var content = "";
                                                    $.each(res, function(i, item){
                                                        content += "<img onclick='changeTitlePic(this)' name='"+ galerie_id +"' id='bild_"+item.bild_id+"' src='<?= Yii::app()->baseUrl ?>/img/site/content/"+item.bild_id+".jpg' class='pic-listet'>";
                                                    });
                                                    $("#pic_content").html(content).fadeIn();
                                                },
                                                beforeSend:  function(){
                                                    $("#pic_content").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                                },
                                                error: function(res){
                                                    $("#pic_content").html(res).fadeIn();
                                                }
                                            });
                                        });

                                        function changeTitlePic(item){
                                            $("#"+item.id).addClass('pic_selectet');
                                            $("#title_pic_pool_"+item.name).html(item.id+" "); // die galerie ID jeweils bveim span field dazu, das ja mehere gibt. galerieID ist das name attribut
                                            $("#title_pic_from_pool_"+item.name).val(item.id);
                                        };
                                    </script>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-blue"><i class="icon-save"></i>&nbsp;&nbsp;&nbsp;Änderungen speichern</button>
                                <button class="btn btn-red del-gal-btn pull-right" id="<?= $item->galerie_id ?>"><i class="icon-remove-sign"></i>&nbsp;&nbsp;&nbsp;Löschen</button>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    <? } ?>
    <script>
        $(".del-gal-btn").click(function(){
            var item = this;
            $.ajax({
                url: "<?= Yii::app()->baseUrl ?>/admin/DeleteGalerie",
                data: { galerie_id: item.id },
                type: "POST",
                success: function(res){
                    $(item).parent().parent().parent().parent().fadeOut("slow");
                },
                beforeSend:  function(){
                },
                error: function(res){
                }
            });
            return false;

        });
        $(".del-pic-btn").click(function(){
            var item = this;
            $.ajax({
                url: "<?= Yii::app()->baseUrl ?>/admin/DeleteGalerieBild",
                data: { bild_id: item.id },
                type: "POST",
                success: function(res){
                    $(item).parent().parent().parent().fadeOut("slow");
                },
                beforeSend:  function(){
                },
                error: function(res){
                }
            });
            return false;
        });    
    </script>
</div>
