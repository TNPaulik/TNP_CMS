<?php
$this->setPageTitle($this->site->name);
$slider = $this->site->getItemByType('Slider');
?>

<?= ($slider ? $this->renderElement($slider->getElementByName('slider')) : '') ?>
<div class="container">
	<div class="hgroup">
	   <ul class="breadcrumb pull-right">
		   <li><a href="<?php Yii::app()->baseUrl ?>">Startseite</a> <span class="divider">/</span></li>
			<li class="active"><?= $this->site->name ?></li>
	   </ul>
	</div>
	<div class="span12" style="float: none">
		<div class="impressum_inner">
			<h4><i class="myic_sf"></i><?= $this->site->title ?></h4>
			<p><?= $this->site->text ?></p>
		</div>
	</div>
</div>