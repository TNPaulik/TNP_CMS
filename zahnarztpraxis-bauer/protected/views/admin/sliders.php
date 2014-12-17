
<?php foreach ($this->sliders AS $slider) { ?>

<ul class="padded separate-sections">
	
	<li class="input">
		<label>Name:</label>
		<?= $slider->name ?>
	</li>
	
	<li>
		<ul class="padded">
		Images:
		<?php foreach ($slider->getImages() AS $image) { ?>
			<li><?= $image->image_id ?></li>
		<?php } ?>
		</ul>
	</li>
			
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/sliderimageadd/<?= $slider->slider_id ?>">add Image</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/slideredit/<?= $slider->slider_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/sliderdel/<?= $slider->slider_id ?>">löschen</a>
	</li>

</ul>

<?php } ?>