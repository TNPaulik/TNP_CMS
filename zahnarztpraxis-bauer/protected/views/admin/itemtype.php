

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $this->itemtype->name ?>
	</li>
	
	<ul class="padded separate-sections">
	<?php foreach ($this->itemtype->getElementTypes() AS $eletype) { ?>
		<li>(<?= $eletype->position ?>) <?= $eletype->name ?>: <?= $eletype->elementtype ?></li>
	<?php } ?>
	</ul>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypetypesedit/<?= $this->itemtype->itemtype_id ?>">add/edit Elementtypes</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypeedit/<?= $this->itemtype->itemtype_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypedel/<?= $this->itemtype->itemtype_id ?>">löschen</a>
	</li>

</ul>