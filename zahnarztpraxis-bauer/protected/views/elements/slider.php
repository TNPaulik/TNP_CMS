<section id="slider_wrapper" data-sliderid="<?= $this->curele->getElement()->slider_id ?>">
	<div id="main_flexslider" class="flexslider">
		<ul class="slides">
		<?php foreach ($this->curele->getElement()->getImages() AS $si) { ?>
			<li class="item slideredit" data-sliderid="<?= $this->curele->getElement()->slider_id ?>" data-position="<?= $si->position ?>" style="background-image: url('<?= $si->getImage()->getUrl() ?>')">
				<div class="container">
					<div class="carousel-caption">
						<a href="#">
							<h1><?= $si->title ?></h1><br>
							<p class="lead inverse"><?= $si->text ?></p>
						</a>
					</div>
				</div>
			</li>
		<?php } ?>
		</ul>
	</div>
</section>