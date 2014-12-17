<?php
$this->setPageTitle($this->site->name);
$slider = $this->site->getItemByType('Slider');
$entrys = $this->site->getItemsByType('Sortiment Eintrag');
$contacts = $this->site->getItemsByType('Ansprechpartner');
$seo = $this->site->getItemByType('SEO Texte');

?>
<div class="container">
	<div class="hgroup">
	   <ul class="breadcrumb pull-right">
		   <li><a href="<?php Yii::app()->baseUrl ?>">Startseite</a> <span class="divider">/</span></li>
			<li class="active"><?= $this->site->name ?></li>
	   </ul>
	</div>
	<section class="start_sortiment">
		<div class="row-fluid">
			<div class="span12">
				<div class="start_sortiment_inner">
					<h4><i class="myic_sf"></i><?= $this->site->title ?></h4>
					<?= $this->site->text ?>                   
				</div>
			</div>
		</div>          
	</section>
	<?php if (count($entrys)) { ?>
		<div id="sortiment_row" class="row-fluid">
			<h2 class="section_header"><i class="myic_sf"></i>Unser Leistungsangebot</h2>
			<div class="row-fluid" style="padding-top:5px;">
				<div class="span4">
					<div class="bs-docs-sidebar">
						<ul class="nav nav-list bs-docs-sidenav">
						<?php foreach ($entrys AS $entry) { ?>
							<li data-id="<?= $entry->item_id; ?>" class="itemmove <? if(!isset($isfirst)){echo 'active';$isfirst=false;} ?>"><a href="#<?= md5($entry->getElementByName('Titel')->getElement()->text) ?>"><i class="icon-chevron-right"></i> <?= $this->cleanString($entry->getElementByName('Titel')->getElement()->text) ?></a></li>
						<?php } ?>
						</ul>
					</div>
				</div>
				
				<div class="span8">
					<div class="row-fluid" style="padding-top:5px;">
						<div class="sortiment_liste">
							<ul class="thumbnails">
						<?php foreach ($entrys AS $entry) { ?>
								<li class="span12" data-id="<?= $entry->item_id ?>" id="<?= md5($entry->getElementByName('Titel')->getElement()->text) ?>">
									<div class="thumbnail itemedit" data-id="<?= $entry->item_id ?>" data-siteid="<?= $this->site->site_id ?>" data-position="<?= $entry->position ?>">
										<?php $bild = $entry->getElementByName('Bild')->getElement(); ?>
										<img class="imgedit" data-id="<?= $entry->getElementByName('Bild')->element_id ?>" src="<?= $bild->url ?>" alt="#" style="background-color:#FFF;">
										<div class="caption">
											<span class="thumbnail_title"><?= $this->renderElement($entry->getElementByName('Titel')) ?></span>
											<span class="thumbnail_text"><?= $this->renderElement($entry->getElementByName('Text')) ?></span>
										</div>
									</div>
								</li>
						<?php } ?>	
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php } ?>
		<div id="seo_row" class="row-fluid">
<?php
		/*
?>		
			<div class="span12">
				<h2 class="section_header"><i class="myic_sf_mini"></i>SEO Text</h2>
				<div class="thumbnail">
					<?= $this->renderElement($seo->getElementByName('seo1')) ?>
				</div>
			</div>
<?php
		*/
?>		
		</div>
 </div>
	

<script type="text/javascript" src="js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/restart_theme.js"></script>
<script type="text/javascript" src="js/bootstrap-affix.js"></script>
<script type="text/javascript" src="js/bootstrap-scrollspy.js"></script>