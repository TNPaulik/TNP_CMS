<?php
$this->setPageTitle($this->site->name);
$slider = $this->site->getItemByType('Slider');
$contacts = $this->site->getItemsByType('Ansprechpartner');

?>
<?= ($slider ? $this->renderElement($slider->getElementByName('slider')) : '') ?>
<div class="container">
	<div class="hgroup">
	   <ul class="breadcrumb pull-right">
			<li><a href="index.html">Startseite</a> <span class="divider">/</span></li>
			<li class="active">Kontakt</li>
	   </ul>
	</div>
	<div class="row-fluid kontakt" style="padding:5px 0 50px;">
		<div class="span6">
			<h3>Zahnarztpraxis Dr. Bauer</h3>
			<table class="table table-condensed">
				<tbody>
					<tr>
						<td width="5%" align="center" valign="middle"><i class="myic-map-marker"></i></td>
						<td width="95%">Neuburger Str. 49</td>
					</tr>
					<tr>
						<td width="5%" align="center" valign="middle"></td>
						<td width="95%">94032 Passau</td>
					</tr>
					<tr>
						<td align="center" valign="middle"><i class="icon-phone"></i></td>
						<td><?= $this->renderElement($contacts[0]->getElementByName('name'), true) ?></td>
					</tr>
					<tr>
						<td align="center" valign="middle"><i class="myic-print"></i></td>
						<td><?= $this->renderElement($contacts[0]->getElementByName('tel'), true) ?></td>
					</tr>
					<tr>
						<td align="center" valign="middle"><i class="myic-envelope"></i></td>
						<td><span class="eleedit" data-id="<?= $contacts[0]->getElementByName('mail')->element_id ?>"><a href="mailto:<?= $this->cleanString($contacts[0]->getElementByName('mail')->getElement()->text) ?>">E-Mail Kontakt</a></span></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="span6">
			<div id="contact">
				<div>
					<form id="new_contact" method="post">                            
					<div>
						<h3>Oder schreiben Sie uns</h3>
						<p>Wir freuen uns von Ihnen zu hören. Füllen Sie einfach das nachfolgende Formular aus und wir werden uns so schnell wie möglich mit Ihnen in Kontakt setzen.</p>
						<span style="color: red">
							<div id="new_contact_es_" class="errorSummary" style="display:none"><p>Bitte beheben Sie folgende Eingabefehler:</p>
							<ul><li>dummy</li></ul></div>                                </span>
						<form>
							<div>
								
								<div><input class="name input-block-level" placeholder="Name" name="ContactForm[name]" id="ContactForm_name" type="text" /></div>
								<div><input class="mail input-block-level" placeholder="E-Mail" name="ContactForm[email]" id="ContactForm_email" type="text" /></div>
								<div><input class="phone input-block-level" placeholder="Telefon" name="ContactForm[phone]" id="ContactForm_phone" type="text" /></div>
								<div><textarea placeholder="Nachricht" rows="6" class="input-block-level" name="ContactForm[message]" id="ContactForm_message"></textarea></div>
								<div><input class="btn" type="submit" name="yt0" value="Nachricht senden" /></div>
							</div>
						</form>
					</div>
					</form>                        
			   </div>
			</div>
		</div>
	</div>
</div>
	