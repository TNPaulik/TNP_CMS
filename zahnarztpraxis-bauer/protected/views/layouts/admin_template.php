<!doctype html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800">
        <meta charset="utf-8">
        <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">

        <link href="<?= Yii::app()->request->baseUrl; ?>/css/admin/admin.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="<?= Yii::app()->request->baseUrl; ?>/css/admin/application.css" media="screen" rel="stylesheet" type="text/css" />
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>window.jQuery || document.write('<script src="<?= Yii::app()->request->baseUrl; ?>/js/jquery-1.9.0.min.js"><\/script>')</script>
        <?php //Yii::app()->getClientScript()->registerCoreScript('jquery'); ?>
		<script src="<?php echo Yii::app()->request->baseUrl; ?>/twitter-bootstrap/js/bootstrap.min.js"></script>
        <script src="<?= Yii::app()->request->baseUrl; ?>/js/jquery.cookie.js" type="text/javascript"></script>
        <script src="<?= Yii::app()->request->baseUrl; ?>/js/admin/ajaxupload.js" type="text/javascript"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/ckeditor.js"></script>
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ui.totop.js"></script>
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-sortable.js"></script>
		
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery-ui-1.8.16.custom.min.js"></script>
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.ui.touch-punch.js"></script>
		<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/jquery.mjs.nestedSortable.js"></script>
		
        <script src="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/_samples/sample.js" type="text/javascript"></script>
        <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/js/admin/adminscripts.js"></script>
		
        <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo Yii::app()->request->baseUrl; ?>/css/menu.css" rel="stylesheet" type="text/css" />
        <title>Zahnarztpraxis Dr. Bauer Admintration</title>
    </head>
    <body>
        <div class="navbar navbar-top navbar-inverse">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Zahnarztpraxis Dr. Bauer Admintration</a>
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