

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $this->element->name ?>
	</li>
	
	<li class="input">
		<label>Type:</label>
		<?= $this->element->type ?>
	</li>
	
	<li class="input">
		<label>Foreignid:</label>
		<?= $this->element->foreign_id ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/elementedit/<?= $this->element->element_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/elementdel/<?= $this->element->element_id ?>">löschen</a>
	</li>

</ul>