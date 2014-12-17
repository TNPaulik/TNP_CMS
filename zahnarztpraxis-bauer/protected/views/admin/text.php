

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $this->text->name ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/textedit/<?= $this->text->text_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/textdel/<?= $this->text->text_id ?>">löschen</a>
	</li>

</ul>