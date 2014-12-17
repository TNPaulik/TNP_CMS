
<div class="container">
	<div class="row">

		<div class="area-top clearfix">
			<div class="pull-left header">
				<h3 class="title">
					<i class="icon-edit"></i>
					Liveadmin
				</h3>
			</div>

		</div>
	</div>
</div>

<div class="container padded">
	<div class="row">

		<!-- Breadcrumb line -->

		<div id="breadcrumbs">
			<div class="breadcrumb-button blue">
				<span class="breadcrumb-label"><i class="icon-home"></i> Home</span>
				<span class="breadcrumb-arrow"><span></span></span>
			</div>



			<div class="breadcrumb-button">
				<span class="breadcrumb-label">
					<i class="icon-edit"></i> Liveadmin
				</span>
				<span class="breadcrumb-arrow"><span></span></span>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="box">
				<div class="box-header">
					<span class="title">Klicken Sie hier um die Live Administration zu aktivieren</span>
				</div>

		<div class="box-content padded">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">

							<li class="input">
								<label>Parent:</label>
								<select name="parent">
									<option value="0">No Parent</option>
								<?php foreach ($this->sites AS $site) { ?>
									<option value="<?= $site->site_id ?>"<?= ($site->site_id == $this->site->parent_id ? ' selected="selected"' : '') ?>><?= $site->name ?> (<?= $site->site_id ?>)</option>
								<?php } ?>			
								</select>
							</li>
							<li class="input">
								<label>Position:</label>
								<input value="<?= $this->site->position ?>" name="position" type="text">
							</li>
							<li class="input">
								<label>Iconstyle:</label>
								<input value="<?= $this->site->iconstyle ?>" name="iconstyle" type="text">
							</li>
							<li class="input">
								<label>
									<div>Im Menü anzeigen:</div>
									<input name="is_in_menu" type="checkbox" <?php if($this->site->is_in_menu == 1) echo 'checked="checked"'; ?> />
								</label>
							</li>
							<li class="input">
								<label>Name:</label>
								<input value="<?= $this->site->name ?>" name="name" type="text" />
							</li>
							<li class="input">
								<label>Url:</label>
								<input value="<?= $this->site->url ?>" name="url" type="text" />
							</li>
							<li class="input">
								<label>Titel:</label>
								<input value="<?= $this->site->title ?>" name="title" type="text" />
							</li>
							<li class="input">
								<label>Header:</label>
								<input value="<?= $this->site->header ?>" name="header" type="text" />
							</li>
							<li class="input">
								<label>Metakeywords:</label>
								<input value="<?= $this->site->metakeywords ?>" name="metakeywords" type="text" />
							</li>
							<li class="input">
								<label>Metadescription:</label>
								<input value="<?= $this->site->metadescription ?>" name="metadescription" type="text" />
							</li>
							<li class="input">
								<label>Text:</label>
								<textarea id="editor_kama" cols="100" rows="10" name="text"><?= $this->site->text ?></textarea>
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
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Seite speichern</button>
					<a class="btn btn-red" onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/sitedel/<?= $this->site->site_id ?>"><i class=" icon-trash"></i>&nbsp;&nbsp;&nbsp;Seite löschen</a>
				</div>
			</form>
			
			<div class="siteitems">
				<h4>Items:</h4>
				<a class="btn btn-green" href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemadd/<?= $this->site->site_id ?>"><i class=" icon-plus"></i>&nbsp;&nbsp;&nbsp;add Item</a><br/><br/>
				<?php foreach ($this->site->getItemsArray() AS $type => $items) { ?>
				<div>
					<h5><?= $items[0]->getType() ?></h5>
					<ul>
						<?php foreach ($items AS $item) { ?>
						<li>
							<b><?= $item->item_id ?>:</b> 
							<?= implode(', ', $item->getElementNames()) ?>
							<a title="entfernen" class="btn btn-red" onclick="return (confirm('Wirklich von der Seite entfernen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/siteitemdel/<?= $this->site->site_id ?>/<?= $item->item_id ?>"><i class="icon-trash"></i></a>
						</li>
						<?php } ?>
					</ul>
				</div>
				<?php } ?>
				
			</div>

		</div>
					
				</div>
			</div>
		</div>
	</div>

