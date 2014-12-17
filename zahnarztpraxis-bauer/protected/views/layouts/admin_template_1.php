<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800">
        <meta charset="utf-8">
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">

        <link href="<?= Yii::app()->request->baseUrl; ?>/css/admin/application.css" media="screen" rel="stylesheet" type="text/css" />
        <script src="<?= Yii::app()->request->baseUrl; ?>/js/admin/application.js" type="text/javascript"></script>
        <script src="<?= Yii::app()->request->baseUrl; ?>/js/admin/ajaxupload.js" type="text/javascript"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/ckeditor.js"></script>
        <script src="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/_samples/sample.js" type="text/javascript"></script>
        <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
                     
            <? //Yii::app()->getClientScript()->registerCoreScript('jquery'); ?>
        <?php
        
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.slider.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/twitter-bootstrap/js/bootstrap.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/wysihtml5-0.3.0.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/select2.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/bootstrap.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/bootstrap-editable/js/bootstrap-editable.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/gritter/js/jquery.gritter.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.sparkline.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/fullcalendar.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.icheck.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.uniform.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.tagsinput.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.validationEngine.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.dataTables.min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/jquery.ui.totop.js');
            Yii::app()->clientScript->registerScriptFile(Yii::app()->baseUrl.'/js/easing.js');
        ?> 
        <title>Sanitätshaus-Fürst Admintration</title>
    </head>
    <body>
        <div class="navbar navbar-top navbar-inverse">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Sanitätshaus-Fürst Admintration</a>
                    <? if (!Yii::app()->user->isGuest) { ?>
                        <ul class="nav pull-right nav navbar-nav navbar-left">
                            <li class="cdrop"><a href="<?= $this->createAbsoluteUrl("/admin/logout") ?>"> <i class="icon-fire"></i> Logout</a></li>
                        </ul>
                    <? } ?>
                </div>
            </div>
        </div>
        <? if (!Yii::app()->user->isGuest) { ?>
            <?= $this->renderPartial("/admin/main_menu") ?>
        <? } ?>

        <? if (!Yii::app()->user->isGuest) { ?>
            <div class="main-content">
                <?= $content ?>
            </div>
        <? } else { ?>
            <?= $content ?>
        <? } ?>
    </body>
</html>