		<div class="box-header">
			<span class="title">Neues Element erstellen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Name:</label>
								<input value="" name="name" type="text">
							</li>
							
							<li class="input">
								<label>Type</label>
								<input class="type" name="type" type="text" readonly="readonly" value="Bitte unten auswählen" />
								</select>
								
							</li>
							
							<li class="input">
								<label>foreignid:</label>
								<input class="foreigner" name="foreign_id" type="text" readonly="readonly" value="Bitte unten auswählen" />
								<div class="menu">
									<ul>
										<li>
											<a href="">Bilder</a>
											<ul>
											<?php foreach ($this->bilder AS $bild) { ?>
												<li>
													<a href="" data-type="bilder" data-id="<?= $bild->bild_id ?>">
														<img style="max-width:100%; max-height: 170px;" src="<?= Yii::app()->baseUrl ?>/img/site/content/<?= $bild->bild_id ?>.jpg">
													</a>
												</li>
											<?php } ?>
											</ul>
										</li>										
									</ul>
									<ul>
										<li>
											<a href="">Gallerie</a>
											<ul>
											<?php foreach ($this->gallerien AS $galerie) { ?>
												<li>
													<a href="" data-type="galerie" data-id="<?= $galerie->galerie_id ?>">
														<?= $galerie->titel ?>
													</a>
												</li>
											<?php } ?>
											</ul>
										</li>										
									</ul>
									<ul>
										<li>
											<a href="">Slider</a>
											<ul>
											<?php foreach ($this->sliders AS $slider) { ?>
												<li>
													<a href="" data-type="slider" data-id="<?= $slider->slider_id ?>">
														<?= $slider->name ?>
													</a>
												</li>
											<?php } ?>
											</ul>
										</li>										
									</ul>
									<ul>
										<li>
											<a href="">Texte</a>
											<ul>
											<?php foreach ($this->texts AS $text) { ?>
												<li>
													<a href="" data-type="text" data-id="<?= $text->text_id ?>">
														<?= $text->name ?>
													</a>
												</li>
											<?php } ?>
											</ul>
										</li>										
									</ul>
								</div>
							</li>

						</ul>
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Element anlegen</button>
				</div>
			</form>

		</div>