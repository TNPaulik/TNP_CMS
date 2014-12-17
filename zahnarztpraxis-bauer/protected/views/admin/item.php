

<ul class="padded separate-sections">

	<li class="input">
		<label>Type:</label>
		<?= $this->item->getType() ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/itemedit/<?= $this->item->item_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemdel/<?= $this->item->item_id ?>">löschen</a>
	</li>

</ul>