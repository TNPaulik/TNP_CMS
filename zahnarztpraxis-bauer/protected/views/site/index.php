<script type="text/javascript">
function popup (url) {
 fenster = window.open(url, "Blätterkatalog", "width=1050,height=800,resizable=yes");
 fenster.focus();
 return false;
}
</script>

<?php
/* @var $this SiteController */
$this->pageTitle=Yii::app()->name;
$index_top = $this->site->getItemByType('Startseite Oben');
$seo = $this->site->getItemByType('SEO Texte');
$groups = $this->site->getItemsByType('Startseite Sortiment');
$parentsite = Sites::model()->find('url LIKE "%eistungen%" AND parent_id = 0');
$sites = $parentsite->getChilds();

?>
<div class="container">
	<section class="start">
		<div class="row-fluid">
			<div class="span6"><img class="thumbnail imgedit" data-id="<?= $index_top->getElementByName('Bild')->element_id ?>" src="<?= $index_top->getElementByName('Bild')->getElement()->getUrl() ?>" alt="#" style="background-color:#FFF;"></div>
			<div class="span6">
				<div class="start_inner">
					<h3><i class="myic_sf"></i>ZAHNARZTPRAXIS <strong>BAUER</strong></h3>
					<!--<img src="images/logo.png" alt="Sanitätshaus Fürst">-->
					<?= $this->renderElement($index_top->getElementByName('Titel')) ?>
					<?= $this->renderElement($index_top->getElementByName('Text')) ?>
				</div>
			</div>
		</div>		  
		<div class="row-fluid">
			<div class="span12">
				<div class="start_inner">
					<?= $this->renderElement($index_top->getElementByName('Subtext')) ?>
				</div>
			</div>
		</div>	
	</section>
	<section id="portfolio_teasers_wrapper">
		<h2 class="section_header"><i class="myic_sf"></i>Unser Leistungsangebot</h2>
		<div class="portfolio_strict row">
			<?php $i = 0; foreach ($sites AS $site) { ?>
				<?php if ($i % 2 == 0) { ?>
					<div class="span12">
				<?php } ?>
					<div class="span6 start_items">
						<div class="start_item">
							<a href="<?= $site->getUrl() ?>">
								<h3 class="section_header"><i class="myic_sf"></i><?= $site->name ?></h3>
							</a>
						</div>
						
						<?php foreach ($site->getItemsByType('Sortiment Eintrag') as $entry) { ?>
							<a href="<?= $site->getUrl() . '#' . md5($entry->getElementByName('Titel')->getElement()->text) ?>">
								<div class="start_item start_item_sub">
									<?= $this->cleanString($entry->getElementByName('Titel')->getElement()->text) ?>
								</div>
							</a>
						<?php } ?>
					</div>
				<?php if ($i % 2 != 0) { ?>
					</div>
				<?php } ?>
			<?php $i++; } ?> 
		 </div>
	</section>
<?php
		/*
?>		
	<div id="seo_row" class="row-fluid">
		<div class="span6">
			<h2 class="section_header"><i class="myic_sf_mini"></i>SEO Text 1</h2>
			<div class="thumbnail">
				<?= $this->renderElement($seo->getElementByName('seo1')) ?>
			</div>
		</div>
		<div class="span6">
			<h2 class="section_header"><i class="myic_sf_mini"></i>SEO Text 2</h2>
			<div class="thumbnail">
				<?= $this->renderElement($seo->getElementByName('seo2')) ?>
			</div>
		</div>
	</div>
<?php
		*/
?>		
</div>