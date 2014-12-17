<?php
	$slider = Sites::model()->find('url = "index"')->getItemByType('Startseite Oben');
?>

<?= ($slider ? $this->renderElement($slider->getElementByName('Slider')) : '') ?>
<div class="container">
	<div class="hgroup">
	   <ul class="breadcrumb pull-right">
		   <li><a href="<?php Yii::app()->baseUrl ?>">Startseite</a> <span class="divider">/</span></li>
			<li class="active">Nette 404 Fehlerseite</li>
	   </ul>
	</div>
	<div class="row-fluid">
	    <div class="span12" style="float: none">
		<div class="impressum_inner">
			<h4>Leider hat es unser Server nicht geschafft, <br>die von Ihnen gesuchte Seite zu finden.</h4>
			Ich als Programmierer wasche aber meine Hände in Unschuld und tippe auf einen, wie in 99,996% üblich, Benutzerfehler ;)<br><br>

			<h4>Oh mein Gott, was kann ich jetzt tun?!?</h4>
			Auch diese Frage kann ich dir natürlich gerne beantworten (Programmierer reicht aber im Normalfall als Ansprache):<br>
			Klicke einfach auf einen Menüeintrag oben und schon bist du wieder auf dem richtigen Wege.
		</div>
	    </div>
	</div>
</div>