<header>
	<div class="container">
		<div class="navbar">
			<div class="navbar-inner"> 
				<a class="brand" href="."><img src="images/logo.png" alt="Sanitätshaus Fürst"></a>
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="nb_left pull-left"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></span> <span class="nb_right pull-right">menu</span> </a>
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
					<?php $this->getSitesByParent(true);
						foreach ($this->sitesByParent[0] AS $site) { ?>
						<?php if (!isset($this->sitesByParent[$site->site_id])) { ?>
							<li data-id="<?= $site->site_id ?>" class="<?= ($this->activetab == $site->url || ($this->activetab == '' && $site->url == 'index')) ? 'active' : '' ?>">
								<a href="<?= Yii::app()->getBaseUrl() ?>/<?= $site->url ?>"><i class="<?= $site->iconstyle ?>"></i> <?= $site->name ?></a>
						<?php } else { ?>
							<li data-id="<?= $site->site_id ?>" class="dropdown<?= ($this->activetab == $site->url) ? ' active_dropdown' : '' ?>">
								<a data-toggle="dropdown" class="dropdown-toggle" href="#"><i class="<?= $site->iconstyle ?>"></i> <?= $site->name ?> <span class="caret"></span></a>
						<?php } ?>
								<?php if (isset($this->sitesByParent[$site->site_id])) { ?>
								<ul class="dropdown-menu" data-id="<?= $site->site_id ?>">
									<?php foreach ($this->sitesByParent[$site->site_id] AS $sub) { ?>
										<li class="" data-id="<?= $sub->site_id ?>"><a href="<?= $sub->url ?>"><?= $sub->name ?></a></li>
									<?php } ?>
								</ul>
								<?php } ?>
							</li>
					<?php } ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</header>