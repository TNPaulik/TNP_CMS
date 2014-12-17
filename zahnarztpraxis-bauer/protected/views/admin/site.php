<div class="container">
	<div class="row">

		<div class="area-top clearfix">
			<div class="pull-left header">
				<h3 class="title">
					<i class="icon-edit"></i>
					Liveadmin
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
					<i class="icon-edit"></i> Liveadmin
				</span>
				<span class="breadcrumb-arrow"><span></span></span>
			</div>
		</div>
	</div>
</div>

<ul class="padded separate-sections">

	<li class="input">
		<label>Parent:</label>
		<?= !is_object($this->site->getParent()) ? 'Top level' : $this->site->getParent()->name ?>
	</li>
	<li class="input">
		<label>Im Menü anzeigen:</label>
		<?= $this->site->is_in_menu ?>
	</li>
	<li class="input">
		<label>Url:</label>
		<?= $this->site->getUrlFromName() ?>
	</li>
	<li class="input">
		<label>Position:</label>
		<?= $this->site->position ?>
	</li>
	<li class="input">
		<label>Iconstyle:</label>
		<?= $this->site->iconstyle ?>
	</li>
	<li class="input">
		<label>Name:</label>
		<?= $this->site->name ?>
	</li>
	<li class="input">
		<label>Url:</label>
		<?= $this->site->url ?>
	</li>
	<li class="input">
		<label>Titel:</label>
		<?= $this->site->title ?>
	</li>
	<li class="input">
		<label>Header:</label>
		<?= $this->site->header ?>
	</li>
	<li class="input">
		<label>Text:</label>		
		<?= $this->site->text ?>
	</li>
	<li class="input">
		<label>Metakeywords:</label>
		<?= $this->site->metakeywords ?>
	</li>
	<li class="input">
		<label>Metadescription:</label>		
		<?= $this->site->metadescription ?>
	</li>
	
	<li>
		<ul class="padded">
		Items:
		<?php foreach ($this->site->getItems() AS $item) { ?>
			<li><?= $item->item_id ?></li>
		<?php } ?>
		</ul>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemadd/<?= $this->site->site_id ?>">add Item</a>
	</li>	
	
	<li>
		<ul class="padded">
		Itemtypes:
		<?php foreach ($this->site->getItemtypes() AS $itemtype) { ?>
			<li><?= $itemtype->name ?></li>
		<?php } ?>
		</ul>
	</li>
		
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemtypeadd/<?= $this->site->site_id ?>">add Itemtype</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/siteedit/<?= $this->site->site_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/sitedel/<?= $this->site->site_id ?>">löschen</a>
	</li>

</ul>