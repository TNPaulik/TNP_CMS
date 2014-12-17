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
$entrys = $this->site->getItemsByType('Mitarbeiter');
$header = $this->site->getItemByType('Headertext')

?>
<div class="container">
	<section id="portfolio_teasers_wrapper">
		<h2 class="section_header"><i class="myic_sf"></i> <?= $this->renderElement($header->getElementByName('header')) ?> </h2>
    
    
    <ul class="portfolio_strict row">
      <?php foreach ($entrys AS $entry) { ?>
            <li class="portfolio_item span3 itemedit itemmove" data-id="<?= $entry->item_id ?>" data-siteid="<?= $this->site->site_id ?>" data-position="<?= $entry->position ?>">
                <div class="portfolio_photo imgedit" data-id="<?= $entry->getElementByName('bild')->element_id ?>" style="background-image:url(<?= $entry->getElementByName('bild')->getElement()->getUrl() ?>)">
                </div>
                <div class="portfolio_description">
                      <?= $this->renderElement($entry->getElementByName('header')) ?>
                      <?= $this->renderElement($entry->getElementByName('text')) ?>
                </div>
            </li>        
        <?php } ?> 			 
   </ul>
    
    
	</section>		
</div>