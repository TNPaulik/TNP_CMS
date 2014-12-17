
<?php foreach ($this->sites AS $site) { ?>

<ul class="padded separate-sections">

	<li class="input">
		<label>Parent:</label>
		<?= !is_object($site->getParent()) ? 'Top level' : $site->getParent()->name ?>
	</li>
	<li class="input">
		<label>Im Menü anzeigen:</label>
		<?= $site->is_in_menu ?>
	</li>
	<li class="input">
		<label>Position:</label>
		<?= $site->position ?>
	</li>
	<li class="input">
		<label>Iconstyle:</label>
		<?= $site->iconstyle ?>
	</li>
	<li class="input">
		<label>Name:</label>
		<?= $site->name ?>
	</li>
	<li class="input">
		<label>Url:</label>
		<?= $site->url ?>
	</li>
	<li class="input">
		<label>Titel:</label>
		<?= $site->title ?>
	</li>
	<li class="input">
		<label>Header:</label>
		<?= $site->header ?>
	</li>
	<li class="input">
		<label>Text:</label>		
		<?= $site->text ?>
	</li>
	<li class="input">
		<label>Metakeywords:</label>
		<?= $site->metakeywords ?>
	</li>
	<li class="input">
		<label>Metadescription:</label>		
		<?= $site->metadescription ?>
	</li>

	<li>
		<ul class="padded">
		Items:
		<?php foreach ($site->getItems() AS $item) { ?>
			<li><?= $item->item_id ?></li>
		<?php } ?>
		</ul>
	</li>
		
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemadd/<?= $site->site_id ?>">add Item</a>
	</li>

	<li>
		<ul class="padded">
		Itemtypes:
		<?php foreach ($site->getItemtypes() AS $itemtype) { ?>
			<li><?= $itemtype->name ?></li>
		<?php } ?>
		</ul>
	</li>
		
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemtypeadd/<?= $site->site_id ?>">add Itemtype</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteedit/<?= $site->site_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/sitedel/<?= $site->site_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>