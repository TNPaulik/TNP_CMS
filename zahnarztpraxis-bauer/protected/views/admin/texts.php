
<?php foreach ($this->texts AS $text) { ?>

<ul class="padded separate-sections">

	
	<li class="input">
		<label>Name:</label>
		<?= $text->name ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/textedit/<?= $text->text_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/textdel/<?= $text->text_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>