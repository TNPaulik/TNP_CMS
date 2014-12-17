<?php $id = isset($_GET['id']) ? $_GET['id'] : 0; ?>
<div class="sidebar-background">
	<div class="primary-sidebar-background"></div>
</div>
<div class="primary-sidebar">
	<!-- Main nav -->
	<ul class="nav navbar-collapse collapse navbar-collapse-primary">
						
		<?php $is = preg_match('/^inline/', $this->getAction()->getId()); ?>
		<li class="<?= $is ? "active" : "" ?>">
			<span class="glow"></span>
			<a href="<?= $this->createAbsoluteUrl("/admin/inlinetranslate") ?>">
				<i class="icon-magic icon-2x"></i>
				<span>Liveadmin</span>
			</a>
		</li>
		
		<?php $is = preg_match('/^site/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= (preg_match('/site/', $this->getAction()->getId()) ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="site_sub2" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Seiten
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="site_sub2" class="itemmove <?= ((isset($_COOKIE['site_sub2_toggled']) && $_COOKIE['site_sub2_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'siteadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/siteadd") ?>">
						<i class="icon-edit"></i>
						<span>Neue Seite</span>
					</a>
				</li>
				<?php foreach ($this->sitesByParent[0] AS $site) { ?>
					<li data-id="<?= $site->site_id ?>" class="<?= ($id == $site->site_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/siteedit/".$site->site_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $site->name ?></span>
						</a>
					</li>
					<?php if (isset($this->sitesByParent[$site->site_id])) { ?>
					<ul>
						<?php foreach ($this->sitesByParent[$site->site_id] AS $sub_site) { ?>
						<li data-id="<?= $sub_site->site_id ?>" class="sub <?= ($id == $sub_site->site_id && $is ? 'active' : '') ?>">
							<a href="<?= $this->createAbsoluteUrl("/admin/siteedit/".$sub_site->site_id) ?>">
								<i class="icon-edit"></i>
								<span><?= $sub_site->name ?></span>
							</a>
						</li>
						<?php } ?>
					</ul>
					<?php } ?>
				<?php } ?>
			</ul>
				
			
			<ul class="sortable">
				<li><div>Some content</div></li>
				<li>
					<div>Some content</div>
					<ul>
						<li><div>Some sub-item content</div></li>
						<li><div>Some sub-item content</div></li>
					</ul>
				</li>
				<li><div>Some content</div></li>
			</ul>
			
			
			
			
			
			
			
			
			
			
			
			
		</li>

<?php  ?>
		
		<?php $is = preg_match('/^element/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="element_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Elemente
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="element_sub" class="<?= ((isset($_COOKIE['element_sub_toggled']) && $_COOKIE['element_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'siteadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/elementadd") ?>">
						<i class="icon-edit"></i>
						<span>Neues Element</span>
					</a>
				</li>
				<?php foreach ($this->elements AS $element) { ?>
					<li class="<?= ($id == $element->element_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/elementedit/".$element->element_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $element->name ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>
			
		</li>
				
		<?php $is = preg_match('/^item/', $this->getAction()->getId()) && !preg_match('/itemtype/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">		
			<span class="glow"></span>
			<a data-target="item_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Items
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="item_sub" class="<?= ((isset($_COOKIE['item_sub_toggled']) && $_COOKIE['item_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'siteadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/itemadd") ?>">
						<i class="icon-edit"></i>
						<span>Neues Item</span>
					</a>
				</li>
				<?php foreach ($this->items AS $item) { ?>
					<li class="<?= ($id == $item->item_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/itemedit/".$item->item_id) ?>">
							<i class="icon-edit"></i>
							<span>(<?= $item->item_id ?>) <?= $item->getType() ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>			
		</li>
			
		<?php $is = preg_match('/^itemtype/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="itemtype_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Itemtypen
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="itemtype_sub" class="<?= ((isset($_COOKIE['itemtype_sub_toggled']) && $_COOKIE['itemtype_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'siteadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/itemtypeadd") ?>">
						<i class="icon-edit"></i>
						<span>Neuen Itemtyp</span>
					</a>
				</li>
				<?php foreach ($this->itemtypes AS $itemtype) { ?>
					<li class="<?= ($id == $itemtype->itemtype_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/itemtypeedit/".$itemtype->itemtype_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $itemtype->name ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>
			
		</li>
		
		<?php $is = preg_match('/^language/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="language_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Sprachen
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="language_sub" class="<?= ((isset($_COOKIE['language_sub_toggled']) && $_COOKIE['language_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'languageadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/languageadd") ?>">
						<i class="icon-edit"></i>
						<span>Neue Sprache</span>
					</a>
				</li>
				<?php foreach ($this->languages AS $language) { ?>
					<li class="<?= ($id == $language->language_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/languageedit/".$language->language_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $language->name ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>
			
		</li>
		
		
		
		<?php $is = preg_match('/^text/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="text_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Texte
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="text_sub" class="<?= ((isset($_COOKIE['text_sub_toggled']) && $_COOKIE['text_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'textadd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/textadd") ?>">
						<i class="icon-edit"></i>
						<span>Neuen Text</span>
					</a>
				</li>
				<?php foreach ($this->texts AS $text) { ?>
					<li class="<?= ($id == $text->text_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/textedit/".$text->text_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $text->name ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>
			
		</li>
		
<?php  ?>
		
		<?php $is = preg_match('/^slider/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="slider_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Slider
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="slider_sub" class="<?= ((isset($_COOKIE['slider_sub_toggled']) && $_COOKIE['slider_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'slideradd') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/slideradd") ?>">
						<i class="icon-edit"></i>
						<span>Neuen Slider</span>
					</a>
				</li>
				<?php foreach ($this->sliders AS $slider) { ?>
					<li class="<?= ($id == $slider->slider_id && $is ? 'active' : '') ?>">
						<a href="<?= $this->createAbsoluteUrl("/admin/slideredit/".$slider->slider_id) ?>">
							<i class="icon-edit"></i>
							<span><?= $slider->name ?></span>
						</a>
					</li>
				<?php } ?>
			</ul>
			
		</li>
		
		
<!--		<li class="<?= ($this->getAction()->getId() == 'slider') ? "active" : "" ?>">
			<span class="glow"></span>
			<a href="<?= $this->createAbsoluteUrl("/admin/Slider") ?>">
				<i class="icon-desktop icon-2x"></i>
				<span>Slider</span>
			</a>
		</li>-->
<!--		<li class="<?= ($this->getAction()->getId() == 'galerien') ? "active" : "" ?>">
			<span class="glow"></span>
			<a href="<?= $this->createAbsoluteUrl("/admin/Galerien") ?>">
				<i class="icon-picture icon-2x"></i>
				<span>Galerien</span>
			</a>
		</li>-->
		<li class="<?= ($this->getAction()->getId() == 'bilder') ? "active" : "" ?>">
			<span class="glow"></span>
			<a href="<?= $this->createAbsoluteUrl("/admin/Bilder") ?>">
				<i class="icon-cloud-upload icon-2x"></i>
				<span>Bild Upload</span>
			</a>
		</li>
<!--		<li class="<?= ($this->getAction()->getId() == 'pdfupload') ? "active" : "" ?>">
			<span class="glow"></span>
			<a href="<?= $this->createAbsoluteUrl("/admin/Pdfupload") ?>">
				<i class="icon-th-list icon-2x"></i>
				<span>PDF-Upload</span>
			</a>
		</li>-->
		
		
		<?php $is = preg_match('/^backup/', $this->getAction()->getId()); ?>
		<li class="dark-nav <?= ($is ? "active" : "") ?>">
		
			<span class="glow"></span>
			<a data-target="backup_sub" class="accordion-toggle <?= $is ? "" : "collapsed" ?>" data-toggle="collapse" href=".">
				<i class="icon-beaker icon-2x"></i>
				<span>
					Absicherung
					<i class="icon-caret-down"></i>
				</span>
			</a>
			
			<ul id="backup_sub" class="<?= ((isset($_COOKIE['backup_sub_toggled']) && $_COOKIE['backup_sub_toggled'] == 'true') ? 'in' : 'collapse') ?>">
				<li class="<?= ($this->getAction()->getId() == 'backupsave') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/backupsave") ?>">
						<i class="icon-edit"></i>
						<span>Save</span>
					</a>
				</li>
				<li class="<?= ($this->getAction()->getId() == 'backupload') ? "active" : "" ?>">
					<a href="<?= $this->createAbsoluteUrl("/admin/backupload") ?>">
						<i class="icon-edit"></i>
						<span>Load</span>
					</a>
				</li>
			</ul>
			
		</li>
		
	   
	</ul>
</div>