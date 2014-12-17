		<div class="box-header">
			<span class="title">Item zur Seite "<?= $this->site->name ?>" (<?= $this->site->site_id ?>) hinzufügen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Item:</label>
								<select name="item_id">
								<?php foreach ($this->items AS $item) { ?>
									<option value="<?= $item->item_id ?>">
										<?= $item->item_id ?>: 
										<?php foreach ($item->getElements() AS $ele) { ?>
										<?= $ele->name ?>, 
										<?php } ?>
									</option>
								<?php } ?>
								</select>
							</li>

						</ul>
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Item der Seite hinzufügen</button>

				</div>
			</form>
		</div>

		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>New Item of Type:</label>
								<select name="type_id">
								<?php foreach ($this->itemtypes AS $it) { ?>
									<option value="<?= $it->itemtype_id ?>">
										<?= $it->name ?>
									</option>
								<?php } ?>
								</select>
							</li>

						</ul>
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Neues Item des Typs der Seite hinzufügen</button>
				</div>
			</form>
		</div>