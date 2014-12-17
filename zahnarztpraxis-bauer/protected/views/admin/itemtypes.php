
<?php foreach ($this->itemtypes AS $itemtype) { ?>

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $itemtype->name ?>
	</li>
	
	<li class="input">
		<ul class="padded separate-sections">
			<?php foreach ($itemtype->getElementTypes() AS $elementtype) { ?>
			<li class="input">
				<?= $elementtype->elementtype ?>
			</li>
			<?php } ?>
		</ul>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypetypesedit/<?= $itemtype->itemtype_id ?>">add/edit Elementtypes</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypeedit/<?= $itemtype->itemtype_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypedel/<?= $itemtype->itemtype_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>