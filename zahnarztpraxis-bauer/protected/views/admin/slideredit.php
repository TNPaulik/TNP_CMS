		<div class="box-header">
			<span class="title">Slider bearbeiten</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Name:</label>
								<input value="<?= $this->slider->name ?>" name="name" type="text" />
							</li>

						</ul>
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Slider speichern</button>
				</div>
			</form>

		</div>