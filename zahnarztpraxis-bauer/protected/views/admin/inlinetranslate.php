
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
					<?php if (isset($_COOKIE['inlinetranslate']) && $_COOKIE['inlinetranslate'] == 1) { ?>
						<a class="btn btn-danger" href="<?= Yii::app()->baseUrl ?>/admin/inlinetranslate/0">
							<i class="icon-off"></i> Deaktivieren
						</a><br><br>
						<a href="<?= Yii::app()->baseUrl ?>/" target="_blank">
							zur Webseite
						</a>
					<?php } else { ?>
						<a class="btn btn-success" href="<?= Yii::app()->baseUrl ?>/admin/inlinetranslate/1">
							<i class="icon-off"></i> Aktivieren
						</a>
					<?php }?>
				</div>
			</div>
		</div>
	</div>
</div>

