

<ul class="padded separate-sections">

	<li class="input">
		<label>Name:</label>
		<?= $this->slider->name ?>
	</li>
	
	<li>
		<ul class="padded">
		Images:
		<?php foreach ($this->slider->getImages() AS $image) { ?>
			<li><?= $image->image_id ?></li>
		<?php } ?>
		</ul>
	</li>
			
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/sliderimageadd/<?= $this->slider->slider_id ?>">add Image</a>
	</li>
	
	<li class="input">
		<a href="<?= Yii::app()->getBaseUrl() ?>/admin/slideredit/<?= $this->slider->slider_id ?>">bearbeiten</a> 
		<a onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/sliderdel/<?= $this->slider->slider_id ?>">löschen</a>
	</li>

</ul>