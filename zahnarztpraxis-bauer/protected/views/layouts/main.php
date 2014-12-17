<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,300italic' rel='stylesheet' type='text/css'>
<meta charset="utf-8">
<title><?php echo isset($this->pageTitle) ? $this->pageTitle : Yii::app()->name; ?></title>
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/main.css" type="text/css" media="screen" />
<link href="less/animate.less-master/animate.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="js/woothemes-FlexSlider-06b12f8/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="js/prettyPhoto_3.1.5/prettyPhoto.css" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="fonts/font-awesome/css/font-awesome.min.css" media="screen" >
<link rel="stylesheet" href="fonts/stylesheet.css" media="screen" >
<!--[if IE 7]>
    <link rel="stylesheet" href="fonts/font-awsome/css/font-awesome-ie7.min.css">
    <![endif]-->
<script type="text/javascript" src="js/modernizr.custom.48287.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>window.jQuery || document.write('<script src="js/jquery-1.9.0.min.js"><\/script>')</script>
<script src="twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl; ?>/css/ckeditor/ckeditor.js"></script>
<script src="js/jquery.cookie.js" type="text/javascript"></script>
<script type="text/javascript" src="js/modernizr.custom.48287.js"></script>
<script src="js/scripts.js"></script>
<script src="js/eleedit.js"></script>
<script src="js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
<script src="js/prettyPhoto_3.1.5/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
<script src="js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/restart_theme.js"></script>
<script type="text/javascript" src="js/jquery-sortable.js"></script>

<script type="text/javascript" src="js/gmaps.js"></script>
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-57x57-precomposed.png">
<link rel="shortcut icon" href="img/favicon.png">
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar"<?= ($this->site ? ' data-siteid="'.$this->site->site_id.'"' : '') ?>>
	
<?php 
	if (isset($_COOKIE['inlinetranslate']) && $_COOKIE['inlinetranslate'] == 1) 
		$this->renderPartial("/site/eleedit");
?>		

<?php 
	$this->renderPartial("/site/header") 
?>

<?php 
	//$this->renderPartial("/site/top_slider") 
?>
	
<div id="main">
		
<?php
	echo $content;
?>
	
<?php 
	$this->renderPartial("/site/footer") 
?>
   
</div>
<script>
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
</body>
</html>