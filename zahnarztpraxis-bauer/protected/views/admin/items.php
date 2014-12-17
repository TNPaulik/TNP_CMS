
<?php foreach ($this->items AS $item) { ?>

<ul class="padded separate-sections">

	<li class="input">
		<label>Id/Typ:</label>
		(<?= $item->item_id ?>) <?= $item->getType() ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemedit/<?= $item->item_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemdel/<?= $item->item_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>