<style type="text/css">
body {
	margin-top: 50px;
}
</style>

<div id="liveadmin">
	<div class="container" style="position: relative">
		<div class="row">
			<div class="span2"><h3>Liveadmin</h3></div>
			<div class="span10">				
				<div id="eleedit_container">
					<div class="eleedit_hover_message eleedit_block pull-right"><div style="padding-top:4px;">Bitte wählen Sie ein Element aus</div></div>
				</div>
			</div>
		</div>
	</div>
</div>

<form action="admin/eleedit" method="post">
	<input type="hidden" name="eleedit_eleid" />
	<div id="txtarea_div"></div>
</form>

<div id="itemedit_div">
	<div class="container" style="position: relative">
		<div class="row-fluid">
			<div class="item_copy span2"><button class="btn btn-success" type="button"><i class="myic-file myic-white" style="margin-top:3px;"></i> Item kopieren</button></div>
			<div class="item_del span2"><button class="btn btn-danger" type="button"><i class="myic-remove-sign myic-white" style="margin-top:3px;"></i> Item löschen</button></div>
			<!--<div class="item_first span2"><button class="btn btn-success" type="button"><i class="myic-arrow-up myic-white" style="margin-top:3px;"></i> an den Anfang</button></div>
			<div class="item_up span2"><button class="btn btn-success" type="button"><i class="myic-chevron-up myic-white" style="margin-top:3px;"></i> nach oben</button></div>
			<div class="item_down span2"><button class="btn btn-success" type="button"><i class="myic-chevron-down myic-white" style="margin-top:3px;"></i> nach unten</button></div>
			<div class="item_last span2"><button class="btn btn-success" type="button"><i class="myic-arrow-down myic-white" style="margin-top:3px;"></i> an das Ende</button></div>-->
		</div>
	</div>
</div>

<div id="imgedit_div">
	
</div>

<div id="slideredit_div">
	<div class="row-fluid pull-right" style="text-align: right">
		<div class="slider_img span2"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Bild</button></div>
		<div class="slider_textedit span2"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Text</button></div>
		
		<div class="slider_copy span2"><button class="btn btn-success" type="button"><i class="myic-file myic-white" style="margin-top:3px;"></i> kopieren</button></div>
		<div class="slider_del span2"><button class="btn btn-danger" type="button"><i class="myic-remove-sign myic-white" style="margin-top:3px;"></i> löschen</button></div>
				
		<div class="slider_left span2"><button class="btn btn-success" type="button"><i class="myic-chevron-left myic-white" style="margin-top:3px;"></i> nach links</button></div>
		<div class="slider_right span2"><button class="btn btn-success" type="button"><i class="myic-chevron-right myic-white" style="margin-top:3px;"></i> nach rechts</button></div>
	</div>
</div>

<div id="slidertextedit_div">
	<div class="container">
		<form action="admin/slidertextedit" method="post">
			<input type="hidden" class="slider_id" name="slider_id" />
			<input type="hidden" class="slider_position" name="slider_position" />
			<div class="row-fluid">
				<div class="span10">
					<div class="row-fluid">
						<div class="span3">
							Titel: 
						</div>
						<div class="span9">
							<input class="slider_title" name="slider_title" type="text" style="width: 100%;" />
						</div>
					</div>
					<div class="row-fluid">
						<div class="span3">
							Text: 
						</div>
						<div class="span9">
							<input class="slider_text" name="slider_text" type="text" style="width: 100%;" />
						</div>
					</div>
				</div>
				<div class="span2" style="padding-top: 43px;">
					<input class="slider_submit" type="submit" value="Texte speichern" />
				</div>
			</div>
		</form>
	</div>
</div>