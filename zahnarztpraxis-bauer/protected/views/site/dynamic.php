DYNAMIC <?= $this->site->name ?>

<?php
	$item = $this->site->getItemByType('SEO Texte');
	
	if (is_object($item)) {
		$ele = $item->getElementByName('seo1');
		echo ($ele->getElement()->text);
	}
?>

<ul>
<?php foreach ($this->site->getItems() AS $item) { ?>
	<li>
		<?= $item->item_id ?> <?= $item->getType() ?>
		<ul>
		<?php foreach ($item->getElements() AS $this->curele) { ?>
			<li>
				<?php if(is_object($this->curele)) { ?>
					<?= $this->curele->element_id ?> <?= $this->curele->type ?>
					<?= $this->renderElement($this->curele) ?>
				<?php } ?>
			</li>
		<?php } ?>
		</ul>
	</li>
<?php } ?>
</ul>