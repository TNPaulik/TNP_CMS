
<div class="container">
	<div class="row">

		<div class="area-top clearfix">
			<div class="pull-left header">
				<h3 class="title">
					<i class="icon-edit"></i>
					Backup load
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
					<i class="icon-edit"></i> Backup load
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
					<span class="title">Backups der Seite</span>
				</div>

				<div class="box-content padded">					
					<ul>
					<?php foreach ($files AS $file) { ?>
						<li>
							<a onclick="return confirm('Bist du dir da WIRKLICH sicher?')" href="<?= Yii::app()->getBaseUrl() ?>/admin/backuploading?file=<?= $file ?>"><?= $file ?></a>
						</li>
					<?php } ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

