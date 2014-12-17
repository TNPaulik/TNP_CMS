
<?php foreach ($this->elements AS $element) { ?>

<ul class="padded separate-sections">

	
	<li class="input">
		<label>Name:</label>
		<?= $element->name ?>
	</li>
	<li class="input">
		<label>Type:</label>
		<?= $element->type ?>
	</li>
	<li class="input">
		<label>Foreign_id:</label>
		<?= $element->foreign_id ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/elementedit/<?= $element->element_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/elementdel/<?= $element->element_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>