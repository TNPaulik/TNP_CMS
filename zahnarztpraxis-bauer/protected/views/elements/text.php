<span class="eleedit" data-id="<?= $this->curele->element_id ?>">
		<?= ($this->renderclean ? $this->cleanString($this->curele->getElement()->getText()) : $this->curele->getElement()->getText()) ?>
</span>