

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $this->language->name ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/languageedit/<?= $this->language->language_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/languagedel/<?= $this->language->language_id ?>">löschen</a>
	</li>

</ul>