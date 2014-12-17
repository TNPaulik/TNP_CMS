<div class="container">
    <div class="row">

        <div class="area-top clearfix">
            <div class="pull-left header">
                <h3 class="title">
                    <i class="icon-edit"></i>
                    Bilder
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
                    <i class="icon-edit"></i> Bilder
                </span>
                <span class="breadcrumb-arrow"><span></span></span>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Bilder hochladen (Bilder (mind. 1280x800) oder Slider (mind. 1920x480))</span>
                </div>

                <div class="box-content">
                    <form class="fill-up" id="formupload" action="<?= Yii::app()->baseUrl ?>/admin/bilderUpload" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-lg-6">
                                <div style="padding: 10px;">
                                    <ul class="padded separate-sections">
                                        <li class="input">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <label>Bilder auswählen:</label>
                                                    <div class="uploader hover">

                                                        <input id="fileupload" type="file" name="img[]" multiple="multiple" size="100" /><span class="filename" style="-webkit-user-select: none;">Bilder auswählen</span>
                                                        <span class="action" style="-webkit-user-select: none;">+</span>
                                                        <div style="display:none;"><button type="submit" class="button">Save</button></div>

                                                    </div>
                                                    <br><br>
                                                    <span id="loading"></span>
                                                </div>
                                                <div class="col-lg-6">
                                                    <label>Kategorie auswählen:</label>
                                                    <select class="chzn-select" id="bild_kategorie">
                                                        <option value="bild">Bild</option>
                                                        <option value="slider">Slider</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="alert alert-success"  style="display: none" id="save_info">
                                                <button type="button" class="close" data-dismiss="alert"></button>
                                                <strong>Gespeichert: </strong>Bilderupload war erfolgreich.
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                    <script language="JavaScript" type="text/javascript">
                       
                       

                        $(document).ready(function() {
                            new AjaxUpload('fileupload', {
                                action: $('form#formupload').attr('action'),
                                name: 'img[]',
                                multiple: 'true',
                                data: {
                                    kategorie: $('#bild_kategorie :selected').val()
                                },
                                onSubmit: function(file, extension) {
                                    $('#loading').html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                },
                                onComplete: function(file, response) {
                                    $("#loading").fadeOut();
                                    $("#save_info").fadeIn();
                                    setTimeout(function() {
                                        $("#save_info").fadeOut();
                                    }, 2000);
                                }
                            });
                        });
                        
                        $('#bild_kategorie').change(function() {
                            bild_kategorie = $('#bild_kategorie :selected').val();
                            alert(bild_kategorie);
                        });
                    </script>   
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header">
                    <span class="title">Bilder löschen und bearbeiten (Roter Button: Löscht das Bild sofort | Blauer Button: Wechselt Kategorie zwischen "bild" und "slider")</span>
                </div>
                <div class="box-content" style="padding:20px;">
                    <div class="row">
<? 
                    $i = 0;
                    foreach ($bilder as $bild) { 
?>
                        <div id="pic_item_<?= $bild->bild_id ?>" class="col-lg-3" style="padding-bottom:20px;">
                            <div style="padding:10px; outline:1px dotted #CCC;">
                                <div style="min-height:180px;"><img style="max-width:100%; max-height: 170px;" src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $bild->bild_id ?>.jpg"></div>
                                <div class="row">
                                    <div class="col-lg-6"><button class="btn btn-block btn-red del-pic-btn" id="bild_<?= $bild->bild_id ?>"><i class="icon-remove-sign"></i>&nbsp;&nbsp;&nbsp;Löschen</button></div>
                                    <div class="col-lg-6"><button class="btn btn-block btn-blue switch-cat-btn" id="bild_switch_<?= $bild->bild_id ?>"><i class="icon-refresh"></i>&nbsp;&nbsp;&nbsp;<span class="cat-name"><?= $bild->kategorie ?></span></button></div>
                                </div>
                                <!--<button class="btn btn-red del-pic-btn" id="bild_<?= $bild->bild_id ?>"><i class="icon-remove-sign"></i>&nbsp;&nbsp;&nbsp;Löschen</button>
                                <button class="btn btn-blue switch-cat-btn" id="bild_switch_<?= $bild->bild_id ?>"><i class="icon-save"></i>&nbsp;&nbsp;&nbsp;<span class="cat-name"><?= $bild->kategorie ?></span></button>-->
                            </div>
                        </div>
<? 
                        $i++;
                        if($i % 4 == 0){
                            echo '</div><div class="row">';

                        }
                    } 
?>
                    </div>
                    <script>
                        $(".del-pic-btn").click(function(){
                            var item = this;
							$.ajax({
								url: "<?= Yii::app()->baseUrl ?>/admin/getimageusages",
								data: { bild_id: item.id },
								type: "POST",
								success: function(res){
									if (parseInt(res) == 0 || confirm("Dieses Bild ist noch an "+res+" Elemente geknüpft! Wollen Sie das Bild wirklich löschen?")) {
										$.ajax({
											url: "<?= Yii::app()->baseUrl ?>/admin/DeleteBild",
											data: { bild_id: item.id },
											type: "POST",
											success: function(res){
												$(item).parent().parent().parent().parent().fadeOut("slow");
											},
											beforeSend:  function(){
											},
											error: function(res){
											}
										});
									}
								}
							});
							//}
                        });    

                        $(".switch-cat-btn").click(function(){
                            var item = this;
                            $.ajax({
                                url: "<?= Yii::app()->baseUrl ?>/admin/SwitchBildKategorie",
                                data: { bild_id: item.id },
                                type: "POST",
                                success: function(res){
                                    $(item).find(".cat-name").text(res);
                                },
                                beforeSend:  function(){
                                },
                                error: function(res){
                                }
                            });

                        });    
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>