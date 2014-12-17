		<div class="box-header">
			<span class="title">Text bearbeiten</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Name:</label>
								<input value="<?= $this->text->name ?>" name="name" type="text" />
							</li>

						</ul>
					</div>
				</div>
				
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

						<?php foreach ($this->languages AS $language) { ?>
							<li class="input">
								<label><?= $language->name ?>:</label>
								<textarea class="ckreplaceoc" name="value<?= $language->language_id ?>">
									<?= $language->getText($this->text->text_id)->text ?>
								</textarea>
							</li>
						<?php } ?>
						</ul>
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;text bearbeiten</button>
				</div>
			</form>

		</div>