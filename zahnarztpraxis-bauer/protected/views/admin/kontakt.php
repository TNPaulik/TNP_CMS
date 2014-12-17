<div class="container">
    <div class="row">

        <div class="area-top clearfix">
            <div class="pull-left header">
                <h3 class="title">
                    <i class="icon-edit"></i>
                    Kontakt
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
                    <i class="icon-edit"></i> Kontakt
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
                        <span class="title"><?= $item->name ?></span>

                    </div>
                    <div class="box-content">
                        <form class="fill-up">
                            <div class="row">
                                <div class="col-lg-12">
                                    <ul class="padded separate-sections">
                                        <li class="input">
                                              <label>Name:</label>
                                            <input type="text" value="<?= $item->name ?>" id="name_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Strasse:</label>
                                            <input type="text" value="<?= $item->strasse ?>" id="strasse_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Hausnummer:</label>
                                            <input type="text" value="<?= $item->hausnummer ?>" id="hausnummer_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>PLZ:</label>
                                            <input type="text" value="<?= $item->plz ?>" id="plz_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Ort:</label>
                                            <input type="text" value="<?= $item->ort ?>" id="ort_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Land:</label>
                                            <input type="text" value="<?= $item->land ?>" id="land_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Telefon:</label>
                                            <input type="text" value="<?= $item->telefon ?>" id="telefon_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Telefax:</label>
                                            <input type="text" value="<?= $item->telefax ?>" id="telefax_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>E-Mail:</label>
                                            <input type="text" value="<?= $item->email ?>" id="email_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Link:</label>
                                            <input type="text" value="<?= $item->link ?>" id="link_<?= $item->adressen_id ?>">
                                        </li>
                                        <li class="input">
                                              <label>Öffnungszeiten:</label>
                                            <input type="text" value="<?= $item->oeffnungszeiten ?>" id="oeffnungszeiten_<?= $item->adressen_id ?>">
                                        </li>


                                    </ul>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-blue" id="save_btn_<?= $item->adressen_id ?>"><i class="icon-save"></i>&nbsp;&nbsp;&nbsp;Änderungen speichern</button>

                                <span id="loading_<?= $item->adressen_id ?>"></span>
                                <br>
                                <br>
                                <div class="alert alert-success" style="display: none" id="save_info_<?= $item->adressen_id ?>">
                                    <button type="button" class="close" data-dismiss="alert"></button>
                                    <strong>Gespeichert: </strong> Der Datensatz wurde geändert.
                                </div>

                                <script>
                                    $("#save_btn_<?= $item->adressen_id ?>").click(function(){
                                                     
                                        $.ajax({
                                            url: "<?= Yii::app()->baseUrl ?>/admin/UpdateAdresse",
                                            data: { adressen_id: <?= $item->adressen_id ?>, 
                                                    name: $("#name_<?= $item->adressen_id ?>").val(),
                                                    strasse: $("#strasse_<?= $item->adressen_id ?>").val(),
                                                    hausnummer: $("#hausnummer_<?= $item->adressen_id ?>").val(),
                                                    plz: $("#plz_<?= $item->adressen_id ?>").val(),
                                                    ort: $("#ort_<?= $item->adressen_id ?>").val(),
                                                    land: $("#land_<?= $item->adressen_id ?>").val(),
                                                    telefon: $("#telefon_<?= $item->adressen_id ?>").val(),
                                                    telefax: $("#telefax_<?= $item->adressen_id ?>").val(),
                                                    email: $("#email_<?= $item->adressen_id ?>").val(),
                                                    link: $("#link_<?= $item->adressen_id ?>").val(),
                                                    oeffnungszeiten: $("#oeffnungszeiten_<?= $item->adressen_id ?>").val()
                                                 },
                                            type: "POST",
                                            success: function(res){
                                                $("#loading_<?= $item->adressen_id ?>").fadeOut();
                                                $("#save_info_<?= $item->adressen_id ?>").fadeIn();
                                                setTimeout(function() {
                                                    $("#save_info_<?= $item->adressen_id ?>").fadeOut();
                                                }, 2000);
                                            },
                                            beforeSend:  function(){
                                                $("#loading_<?= $item->adressen_id ?>").html("<img src=\"<?= Yii::app()->baseUrl ?>/img/loading.gif\" alt=\"loading\">").fadeIn();
                                            },
                                            error: function(res){
                                                $("#loading_<?= $item->adressen_id ?>").html(res).fadeIn();
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

