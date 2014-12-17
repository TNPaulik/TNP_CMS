		<div class="box-header">
			<span class="title">Neues Item anlegen, bitte zuerst Itemtyp auswählen:</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">
							<li class="input">
								<label>Typ:</label>
								<select name="itemtype">
								<?php foreach ($this->itemtypes AS $itemtype) { ?>
									<option value="<?= $itemtype->itemtype_id ?>"><?= $itemtype->name ?></option>
								<?php } ?>
								</select>
							</li>
							<li class="input">
								<label>mit vordefinierten Elementen</label>
								<input type="checkbox" name="usedefaults" />
							</li>
						</ul>
						
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Itemtyp auswählen</button>

				</div>
			</form>

		</div>