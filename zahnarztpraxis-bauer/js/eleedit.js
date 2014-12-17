		
function getSelectedText() {
	if (window.getSelection) {
		return window.getSelection().toHtml();
	} else if (document.selection) {
		return document.selection.createRange().text;
	}
	return ('');
}

function getSelectionHtml() {
	var html = "";
	if (typeof window.getSelection != "undefined") {
		var sel = window.getSelection();
		if (sel.rangeCount) {
			var container = document.createElement("div");
			for (var i = 0, len = sel.rangeCount; i < len; ++i) {
				container.appendChild(sel.getRangeAt(i).cloneContents());
			}
			html = container.innerHTML;
		}
	} else if (typeof document.selection != "undefined") {
		if (document.selection.type == "Text") {
			html = document.selection.createRange().htmlText;
		}
	}
	return html;
}

if (readCookie('inlinetranslate') == 1) {
		
	$(document).ready(function () {
		
		$('.itemmove a').css('cursor', 'all-scroll');
		
		var items = $("ul.portfolio_strict").sortable({
			group: 'serialization',
			delay: 500,
			onDrop: function (item, container, _super) {

				var data = items.sortable("serialize").get();		  
				$(data).each(function (index, value) {			  
					$.ajax({
						type: "POST",
						url: "admin/itemsort",
						data: { sorting: value, site: $('body').data('siteid') }
					});
				});

				_super(item, container);
			},
			onDragStart: function ($item, container, _super) {
				//$('body').scrollTo($("ul.thumbnails").offset().top);
				var a = {};
				
				console.log('items');
				
				_super($item, container)
			},
		});	
		
		var group = $("ul.thumbnails").sortable({
			group: 'serialization',
			delay: 500,
			onDrop: function (item, container, _super) {
				$('ul.thumbnails span.thumbnail_text').show();
				$('ul.thumbnails img.imgedit').show();

				var data = group.sortable("serialize").get();
				var jsonString = JSON.stringify(data, null, ' ');		  
				$(data).each(function (index, value) {			  
					$.ajax({
						type: "POST",
						url: "admin/itemsort",
						data: { sorting: value, site: $('body').data('siteid') }
					});

					var lis = $("ul.bs-docs-sidenav > li");
					
					for (var i = value.length - 1; i >= 0; i--) {						
						var app = $("ul.bs-docs-sidenav").find("[data-id="+value[i].id+"]");
						app.insertBefore("ul.bs-docs-sidenav li:first-child");
					};
				});

				//setTimeout('fixmove()', 10);
				_super(item, container);
				item.css('margin-left', '0px');
				//item.css('margin-bottom', '0px');
			},
			onDragStart: function ($item, container, _super) {
				//$('body').scrollTo($("ul.thumbnails").offset().top);
				var a = {};
				console.log('group');

				margins = new Array();
				paddings = new Array();

				$('ul.thumbnails span.thumbnail_text').hide();
				$('ul.thumbnails img.imgedit').hide();			

				$('html, body').animate({
					scrollTop: $("ul.thumbnails").offset().top - 100
				}, 10);
				_super($item, container)
			},
		});
		
		
		var affixgroup = $("ul.bs-docs-sidenav").sortable({
			affixgroup: 'serialization',
			delay: 500,
			onDrop: function (item, container, _super) {

				var data = affixgroup.sortable("serialize").get();
				var jsonString = JSON.stringify(data, null, ' ');	
				//console.log(data);	  
				$(data).each(function (index, value) {	  
					//console.log(value);
					
					$.ajax({
						type: "POST",
						url: "admin/itemsort",
						data: { sorting: value, site: $('body').data('siteid') }
					})
					
					
					var lis = $("ul.thumbnails > li");
					
					for (var i = value.length - 1; i >= 0; i--) {						
						var app = lis.find("[data-id="+value[i].id+']').parent();
						app.insertBefore("ul.thumbnails li:first-child");
					};
				});

				_super(item, container);			
			},
			onDragStart: function ($item, container, _super) {
				//$('body').scrollTo($("ul.thumbnails").offset().top);
				var a = {};

				console.log('affix');
				
				_super($item, container)
			},
		});	
		
		/*var dropdown = $("ul.dropdown-menu").sortable({
			group: 'serialization',
			delay: 500,
			onDrop: function (item, container, _super) {

				var data = dropdown.sortable("serialize").get();
				
				$(data).each(function (index, value) {			  
					$.ajax({
						type: "POST",
						url: "admin/pagesort",
						data: { sorting: value }
					});
				});

				_super(item, container);
			},
			onDragStart: function ($item, container, _super) {
				//$('body').scrollTo($("ul.thumbnails").offset().top);
				var a = {};	
				console.log('dropdown');			
				_super($item, container)
			},
		});
		
		var sites = $("ul.nav").sortable({
			items: 'li:not(.dropdown-menu-child)',
			group: 'serialization',
			delay: 500,
			onDrop: function (item, container, _super) {

				var data = sites.sortable("serialize").get();
				
				$(data).each(function (index, value) {			  
					$.ajax({
						type: "POST",
						url: "admin/pagesort",
						data: { sorting: value }
					});
				});

				_super(item, container);
			},
			onDragStart: function ($item, container, _super) {
				//$('body').scrollTo($("ul.thumbnails").offset().top);
				var a = {};				
				_super($item, container)
			},
		});*/
		
		var textOriginal = $('#eleedit_container').html();
		var textEndEdit = '<button type="button" class="btn btn-danger"><i style="margin-top:3px;" class="icon-trash myic-white"></i> Änderungen verwerfen</button>';
		var textEdit = '<div class="eleedit_block eleedit_hover_message_textedit pull-right"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Text bearbeiten</button></div>';
		textEdit += '<div class="eleedit_block eleedit_hover_message_itemedit pull-right"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Item bearbeiten</button></div>';
		var textItemEdit = '<div class="eleedit_block eleedit_hover_message pull-right"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Item bearbeiten</button></div>';
		var textImgEdit = '<div class="eleedit_block eleedit_hover_message pull-right"><button class="btn btn-success" type="button"><i class="myic-pencil myic-white" style="margin-top:3px;"></i> Bild bearbeiten</button></div>';
		var textSliderEdit = $('#slideredit_div');
		
		function hideUnused() {
			$('#txtarea_div').hide();
			$('#itemedit_div').hide();
			$('#imgedit_div').hide();
			$('#slideredit_div').hide();
			$('#slidertextedit_div').hide();
		}
		
		
		// magic
//		$('body').mouseup(function() {
//			var html=getSelectionHtml();
//			if (html!='') {
//				console.log(html);
//				$.ajax({
//					url: "admin/makemagic",
//					type: "POST",
//					data: { html: html, siteid: $('body').attr('data-siteid') }
//				}).done(function( data ) {
//					//$('#eleedit_container').html(data);
//				});
//			}
//		});
		
		//eleedit
		$('.eleedit').hover(function () {
			$(this).css('border', '1px dashed #FF0000');
		}, function () {
			$(this).css('border', '1px dashed transparent');
		});
		
		$('.eleedit').click(function () {			
			hideUnused();
			
			var html = $(this).html();			
			
			$('#eleedit_container').html(textEdit);
			
			$('#txtarea_div').html('<textarea class="ckreplace" id="txtarea" name="eleedit_textarea">'+html+'</textarea>');
			
			//$('.eleedit_hover_message').css('background-color', 'red');
						
			$("input[name=eleedit_eleid]").val($(this).attr('data-id'));
			$('.eleedit_hover_message_textedit').click(function () {
				var textarea = $('#txtarea').attr('name');
				
				console.log(textarea);
				
				var instance = CKEDITOR.instances[textarea];				
				if (instance) {
					CKEDITOR.remove(instance);
					console.log(instance);
				}
				
				instance = CKEDITOR.instances['txtarea'];				
				if (instance) {
					CKEDITOR.remove(instance);
					console.log(instance);
				}
				
				CKEDITOR.replace(textarea, {skin: 'kama'});
				$('#txtarea_div').slideDown();
				
				$(this).html(textEndEdit);
				$(this).children('button').click(function () {
					$('#txtarea_div').slideUp();
					$('#txtarea_div').html('');
					$('#eleedit_container').html(textOriginal);
				});
			});
			
			var itemid = $(this).parents('.itemedit').attr('data-id');
			var siteid = $(this).parents('.itemedit').attr('data-siteid');
			var position = $(this).parents('.itemedit').attr('data-position');
			
			$('.eleedit_hover_message_itemedit').click(function () {
				$('#itemedit_div').slideDown();

				$(this).html(textEndEdit);
				$(this).children('button').click(function () {
					$('#itemedit_div').slideUp();
					$('#itemedit_div').html('');
					$('#eleedit_container').html(textOriginal);
				});

				$('.item_copy').click(function () {
					window.location = 'admin/itemcopy/'+itemid+'/'+siteid;
				});
				$('.item_del').click(function () {
					if (confirm('Wirklich?')) {
						window.location = 'admin/siteitemdel/'+siteid+'/'+itemid;
					}
				});

				$('.item_up').click(function () {
					window.location = 'admin/itemmoveup/'+position+'/'+siteid;
				});
				$('.item_down').click(function () {
					window.location = 'admin/itemmovedown/'+position+'/'+siteid;
				});

				$('.item_first').click(function () {
					window.location = 'admin/itemmovefirst/'+position+'/'+siteid;
				});
				$('.item_last').click(function () {
					window.location = 'admin/itemmovelast/'+position+'/'+siteid;
				});
			});
			
			return false;
		});
		
		//itemedit
		$('.itemedit').hover(function () {
			$(this).css('border', '1px dashed #00FF00');
		}, function () {
			$(this).css('border', '1px dashed transparent');
		});
		
		$('.itemedit').click(function () {			
			hideUnused();
			
			$('#eleedit_container').html(textItemEdit);
						
			var itemid = $(this).attr('data-id');
			var siteid = $(this).attr('data-siteid');
			var position = $(this).attr('data-position');
			
			$('.eleedit_hover_message').click(function () {
				$('#itemedit_div').slideDown();

				$(this).html(textEndEdit);
				$(this).children('button').click(function () {
					$('#itemedit_div').slideUp();
					$('#itemedit_div').html('');
					$('#eleedit_container').html(textOriginal);
				});

				$('.item_copy').click(function () {
					window.location = 'admin/itemcopy/'+itemid+'/'+siteid;
				});
				$('.item_del').click(function () {
					if (confirm('Wirklich?')) {
						window.location = 'admin/siteitemdel/'+siteid+'/'+itemid;
					}
				});

				$('.item_up').click(function () {
					window.location = 'admin/itemmoveup/'+position+'/'+siteid;
				});
				$('.item_down').click(function () {
					window.location = 'admin/itemmovedown/'+position+'/'+siteid;
				});

				$('.item_first').click(function () {
					window.location = 'admin/itemmovefirst/'+position+'/'+siteid;
				});
				$('.item_last').click(function () {
					window.location = 'admin/itemmovelast/'+position+'/'+siteid;
				});
			});
			
			return false;
		});
		
		
		//imgedit
		$('.imgedit').hover(function () {
			$(this).css('border', '1px dashed #0000FF');
		}, function () {
			$(this).css('border', '1px dashed transparent');
		});
		
		$('.imgedit').click(function () {
			hideUnused();
			
			var eleid = $(this).attr('data-id');
			
			$('#eleedit_container').html(textImgEdit);
			
			$('.eleedit_hover_message').click(function () {
				$('#eleedit_container').html('<div class="eleedit_block imgedit_hover_message pull-right">loading</div>');

				$.ajax({
					url: "admin/getimages"
				}).done(function( data ) {
					$('#eleedit_container').html('<div class="eleedit_block imgedit_hover_message pull-right">bitte jetzt das Bild auswählen</div>');

					$('#imgedit_div').html(data);
					$('#imgedit_div').slideDown();

					$('.getimages a').click(function () {
						var imgid = $(this).attr('data-id');
						window.location = 'admin/eleimgchange/'+eleid+'/'+imgid;
						return false;
					});
				});			
			});
			
			return false;
		});
		
		
		//slideredit 
		$('.slideredit').hover(function () {
			$(this).css('border', '1px dashed #0000FF');
		}, function () {
			$(this).css('border', '1px dashed transparent');
		});
		
		$('.slideredit').click(function () {
			hideUnused();
			
			$('#eleedit_container').html(textSliderEdit);
			$('#slideredit_div').show();

			var sliderid = $(this).attr('data-sliderid');
			var sliderpos = $(this).attr('data-position');
			
			$('.slider_img').click(function () {
				
				$('#slidertextedit_div').hide();
				
				var sliderimgtxt = $('.slider_img').html();
				$('.slider_img').children().html('loading...');
				
				//$('#eleedit_container').html('<div class="eleedit_block imgedit_hover_message pull-right">loading</div>');

				$.ajax({
					url: "admin/getsliderimages"
				}).done(function( data ) {
					
					$('.slider_img').html(sliderimgtxt);
					$('#slideredit_div').show();

					$('#imgedit_div').html(data);
					$('#imgedit_div').slideDown();

					$('.getimages a').click(function () {
						var imgid = $(this).attr('data-id');
						window.location = 'admin/sliderimgchange/'+sliderid+'/'+sliderpos+'/'+imgid;
						return false;
					});
				});
			});
			
			$('.slider_left').click(function () {
				window.location = 'admin/slidermoveleft/'+sliderid+'/'+sliderpos;				
			});
			
			$('.slider_right').click(function () {
				window.location = 'admin/slidermoveright/'+sliderid+'/'+sliderpos;				
			});
			
			$('.slider_copy').click(function () {
				window.location = 'admin/sliderimagecopy/'+sliderid+'/'+sliderpos;				
			});
			
			$('.slider_del').click(function () {
				window.location = 'admin/sliderimagedelete/'+sliderid+'/'+sliderpos;
			});
			
			$('.slider_textedit').click(function () {
				
				$('#imgedit_div').hide();
				
				var sliderval = $('.slider_submit').val();
				$('.slider_submit').val('loading...');
				$('.slider_title').val('loading...');
				$('.slider_text').val('loading...');
				
				$.ajax({
					url: "admin/getslidertext/"+sliderid+"/"+sliderpos
				}).done(function( data ) {
					$('.slider_submit').val(sliderval);
					var jdata = $.parseJSON(data);
					$('.slider_id').val(sliderid);
					$('.slider_position').val(sliderpos);
					$('.slider_title').val(jdata[0]);
					$('.slider_text').val(jdata[1]);
				});
				
				
				$('#slidertextedit_div').slideDown();
			});
			
			return false;
		});
	});
}