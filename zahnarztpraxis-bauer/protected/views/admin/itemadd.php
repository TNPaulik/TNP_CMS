		<div class="box-header">
			<span class="title">Neues Item erstellen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<input type="hidden" name="itemtype" value="<?= $this->itemtype->itemtype_id ?>" />
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">
						<?php foreach ($this->itemtype->getElementtypes() AS $eletype) { ?>
							<li class="input">
								<label>(<?= $eletype->position ?>) <?= $eletype->name ?>: <?= $eletype->elementtype ?></label>
								<select name="element<?= $eletype->position ?>">
								<?php foreach($this->elementsByType[$eletype->elementtype] AS $element) { ?>
									<option value="<?= $element->element_id ?>"><?= $element->name ?></option>
								<?php } ?>
								</select>
							</li>
						<?php } ?>
						</ul>
						
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Item anlegen</button>

				</div>
			</form>

		</div>