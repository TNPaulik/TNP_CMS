<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class="no-js" lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Sanitätshaus Fürst</title>
</head>
<body>	
	<?php var_dump(setlocale(LC_ALL, 0)); ?>
	<?php echo ('füg'); ?> --- <?php echo html_entity_decode('fük'); ?> --- <?php echo html_entity_decode('f&uuml;g', ENT_QUOTES, 'UTF-8' ); ?> --- <?php echo ('f&uuml;s'); ?>
</body>
</html>