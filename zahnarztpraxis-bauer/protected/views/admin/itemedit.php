		<div class="box-header">
			<span class="title">Item bearbeiten</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">
							<li class="input">
								<label>Typ:</label>
								<?= $this->item->getType() ?>
							</li>
						</ul>
						
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">
						
						<ul class="padded separate-sections">
						<?php foreach ($this->itemtype->getElementtypes() AS $eletype) { 
							$elements = $this->item->getElements();
							?>
							<li class="input">
								<label>(<?= $eletype->position ?>) <?= $eletype->name ?>: <?= $eletype->elementtype ?></label>
								<select name="element<?= $eletype->position ?>">
								<?php foreach($this->elementsByType[$eletype->elementtype] AS $element) { ?>
									<option<?= (isset($elements[$eletype->position]) && $element->element_id == $elements[$eletype->position]->element_id ? ' selected="selected"' : '' ) ?> value="<?= $element->element_id ?>"><?= $element->name ?></option>
								<?php } ?>
								</select>
							</li>
						<?php } ?>
						</ul>
						
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Item bearbeiten</button>
					<a class="btn btn-red" onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemdel/<?= $this->item->item_id ?>"><i class=" icon-trash"></i>&nbsp;&nbsp;&nbsp;Item löschen</a>
				</div>
			</form>
		</div>