		<div class="box-header">
			<span class="title">Itemtype zur Seite "<?= $this->site->name ?>" (<?= $this->site->site_id ?>) hinzufügen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">
						<ul class="padded separate-sections">
							<li class="input">
								<label>Itemtype:</label>
								<select name="itemtype_id">
								<?php foreach ($this->itemtypes AS $itemtype) { ?>
									<option value="<?= $itemtype->itemtype_id ?>"><?= $itemtype->itemtype_id ?></option>
								<?php } ?>
								</select>
							</li>
						</ul>
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Itemtype der Seite hinzufügen</button>
				</div>
			</form>
		</div>