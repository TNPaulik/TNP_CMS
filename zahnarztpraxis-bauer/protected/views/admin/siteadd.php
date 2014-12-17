		<div class="box-header">
			<span class="title">Neue Seite erstellen</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Parent:</label>
								<select name="parent">
									<option value="0">No Parent</option>
								<?php foreach ($this->sites AS $site) { ?>
									<option value="<?= $site->site_id ?>"><?= $site->name ?> (<?= $site->site_id ?>)</option>
								<?php } ?>			
								</select>
							</li>
							<li class="input">
								<label>Position:</label>
								<input value="1" name="position" type="text">
							</li>
							<li class="input">
								<label>Iconstyle:</label>
								<input value="myic-home" name="iconstyle" type="text">
							</li>
							<li class="input">
								<label>Im Menü anzeigen:</label>
								<input name="is_in_menu" type="checkbox" />
							</li>
							<li class="input">
								<label>Name:</label>
								<input value="" name="name" type="text" />
							</li>
							<li class="input">
								<label>Url:</label>
								<input value="" name="url" type="text" />
							</li>
							<li class="input">
								<label>Titel:</label>
								<input value="" name="title" type="text" />
							</li>
							<li class="input">
								<label>Header:</label>
								<input value="" name="header" type="text" />
							</li>
							<li class="input">
								<label>Metakeywords:</label>
								<input value="" name="metakeywords" type="text" />
							</li>
							<li class="input">
								<label>Metadescription:</label>
								<input value="" name="metadescription" type="text" />
							</li>
							
							<li class="input">
								<label>Text:</label>
								<textarea id="editor_kama" cols="100" rows="10" name="text"></textarea>
								<script type="text/javascript">
								CKEDITOR.replace( 'editor_kama',
								{
									skin : 'kama'
								});
								</script>
							</li>

						</ul>
					</div>
				</div>
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Seite anlegen</button>

				</div>
			</form>

		</div>