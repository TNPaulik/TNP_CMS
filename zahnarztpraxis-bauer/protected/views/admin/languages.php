
<?php foreach ($this->languages AS $language) { ?>

<ul class="padded separate-sections">

	
	<li class="input">
		<label>Name:</label>
		<?= $language->name ?>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/languageedit/<?= $language->language_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/languagedel/<?= $language->language_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>