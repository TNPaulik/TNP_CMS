
<ul class="getimages">
<?php foreach ($this->sliderimages AS $bild) { ?>
	<li>
		<a href="" data-type="bilder" data-id="<?= $bild->bild_id ?>">
			<img src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $bild->bild_id ?>_small.jpg">
		</a>
	</li>
<?php } ?>
</ul>