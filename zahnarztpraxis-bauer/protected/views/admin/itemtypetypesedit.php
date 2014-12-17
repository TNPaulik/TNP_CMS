		<div class="box-header">
			<span class="title">Itemtyp Elemente bearbeiten</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

					<?php for ($i = 1; $i <= $this->elementtypesPerItem; $i++) {
						
						$eletype = false;
						
						if (isset($this->itemtype)) {
							$eletype = $this->itemtype->getElementtypes($i);
						}
						
					?>
						<h3>Element <?= $i ?>:</h3>
						<ul class="padded separate-sections">		
														
							<li class="input">
								<label>Name:</label>
								<input type="text" name="name<?= $i ?>" value="<?= is_object($eletype) ? $eletype->name : '' ?>" />
							</li>
							
							<li class="input">
								<label>Elementtype:</label>
								<select name="elementtype<?= $i ?>">
									<option value="not">Nicht verwendet</option>
								<?php foreach ($this->elementtypes AS $type) { ?>
									<option value="<?= $type ?>"<?= (is_object($eletype) && $eletype->elementtype == $type) ? ' selected="selected"' : '' ?>><?= $type ?></option> -->
								<?php } ?>
								</select>
							</li>
							
							<li class="input">
								<label>Position:</label>
								<input type="text" name="position<?= $i ?>" value="<?= is_object($eletype) ? $eletype->position : $i ?>" />
							</li>
						</ul>
					<?php } ?>
						
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Itemtyp Elemente speichern</button>
				</div>
			</form>

		</div>