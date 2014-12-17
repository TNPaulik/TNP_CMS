		<div class="box-header">
			<span class="title">Itemtyp bearbeiten</span>
		</div>
		<div class="box-content">
			<form class="fill-up" enctype="multipart/form-data" method="post">
				<div class="row">
					<div class="col-lg-12">

						<ul class="padded separate-sections">
							<li class="input">
								<label>Name:</label>
								<input value="<?= $this->itemtype->name ?>" name="name" type="text" />
							</li>
						</ul>
						
					</div>
				</div>
				
				<div class="form-actions">
					<input name="new_item" type="hidden">
					<button type="submit" class="btn btn-green"><i class=" icon-pencil"></i>&nbsp;&nbsp;&nbsp;Itemtype speichern</button>
					<a class="btn btn-red" onclick="return (confirm('Wirklich löschen?'))" href="<?= Yii::app()->getBaseUrl() ?>/admin/itemtypedel/<?= $this->itemtype->itemtype_id ?>"><i class=" icon-trash"></i>&nbsp;&nbsp;&nbsp;Itemtype löschen</a>
				</div>
			</form>

		</div>