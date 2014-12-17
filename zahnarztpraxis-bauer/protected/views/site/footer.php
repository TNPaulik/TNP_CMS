<?php

$contactsu = Sites::model()->find('url = "index"')->getItemsByType('Ansprechpartner Unten');
$opentimes = Sites::model()->find('url = "index"')->getItemByType('Öffnungszeiten');

if (isset($this->botmap) && $this->botmap) { ?>
<div id="gmap_teaser_wrapper">
	<div id="google-map"></div>
	<div id="gmap_my_controls">
		<div style="padding:10px 10px 0 0;"><button class="btn btn-primary" id="gmaps_pos1" style="width:250px;"><i class="myic-map-marker myic-white"></i> Zahnarztpraxis Bauer Passau</button></div>
	</div>
</div>
<?php } ?>

<footer>
<section id="footer_teasers_wrapper">
	<div class="container">
		<div class="row">
			<div class="span4 footer_teaser">
				<h3>Unsere Öffnungszeiten</h3>
                                <?= $this->renderElement($opentimes->getElementByName('text')) ?>
			 </div>
			 <div class="span4 footer_teaser">
			 </div>
			 <div class="span4 footer_teaser">
					<h3>Zahnarztpraxis Bauer Passau</h3>
				<table class="table table-condensed">
					<tbody>
						<tr>
							<td width="5%" align="center" valign="middle"><i class="myic-map-marker myic-white"></i></td>
							<td width="95%">Neuburger Straße 49</td>
						</tr>
						<tr>
							<td width="5%" align="center" valign="middle"></td>
							<td width="95%">94036 Passau</td>
						</tr>
						<tr>
							<td align="center" valign="middle"><i class="icon-phone"></i></td>
							<td><?= $this->renderElement($contactsu[1]->getElementByName('tel'), true) ?></td>
						</tr>
						<tr>
							<td align="center" valign="middle"><i class="myic-print myic-white"></i></td>
							<td><?= $this->renderElement($contactsu[1]->getElementByName('fax'), true) ?></td>
						</tr>
						<tr>
							<td align="center" valign="middle"><i class="myic-envelope myic-white"></i></td>
							<td><span class="eleedit" data-id="<?= $contactsu[1]->getElementByName('mail')->element_id ?>"><a href="mailto:<?= $this->cleanString($contactsu[1]->getElementByName('mail')->getElement()->text) ?>"><?= $this->cleanString($contactsu[1]->getElementByName('mail')->getElement()->text) ?></a></span></td>
						</tr>
					</tbody>
				</table>
			 </div>
		</div>
	 </div>
</section>
<section id="copyright">
    <div class="container">&copy;<?=date('Y');?> by <a href="#" target="_blank">kschwarzmeier & tpaulik</a></div>
</section>
</footer>