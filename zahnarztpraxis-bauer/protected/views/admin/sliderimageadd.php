		<div class="box-header">
			<span class="title">Bild zum Slider "<?= $this->slider->name ?>" hinzufügen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">
							
							<li class="input">
								<label>Titel:</label>
								<input type="text" name="title" />
							</li>
														
							<li class="input">
								<label>Text:</label>
								<input type="text" name="text" />
							</li>
														
							<li class="input">
								<label>Bildid:</label>
								<input type="text" class="image_id" name="image_id" readonly="readonly" />
							</li>

							<li class="input">
								<label>Bild:</label>
								<ul class="padded separate-sections imageselection">
								<?php foreach ($this->sliderimages AS $bild) { ?>
									<li>
										<a href="" data-type="bilder" data-id="<?= $bild->bild_id ?>">
											<img style="max-width:100%; max-height: 170px;" src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $bild->bild_id ?>.jpg">
										</a>
									</li>
								<?php } ?>
								</ul>
							</li>

						</ul>
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Bild zu Slider hinzufügen</button>
				</div>
			</form>

		</div>