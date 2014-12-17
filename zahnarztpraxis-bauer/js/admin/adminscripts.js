
$(window).load(function() {   
	$('.menu ul li ul li a').click(function () {
		$this = $(this);
		$('.type').val($this.attr('data-type'));
		$('.foreigner').val($this.attr('data-id'));		
		return (false);
	});
	
	$('.imageselection li a').click(function () {
		$this = $(this);
		$('.image_id').val($this.attr('data-id'));		
		return (false);
	});
	
	$('.accordion-toggle').click(function () {
		var $this   = $(this);
		var target = $this.attr('data-target');
		
		console.log($('#'+target).is(":hidden"));
		
		createCookie(target+"_toggled", $('#'+target).is(":hidden"));
		
		$('#'+target).slideToggle();
		return false;
	});
	
	$('.ckreplaceoc').click(function () {		
		CKEDITOR.replace(this.name, {skin: 'kama'});
	});
	
	
});

$(document).ready(function(){

	$('ul.sortable').nestedSortable({
		listType: 'ul',
		forcePlaceholderSize: true,
		handle: 'div',
		helper:	'clone',
		items: 'li',
		opacity: .6,
		placeholder: 'placeholder',
		revert: 250,
		tabSize: 25,
		tolerance: 'pointer',
		toleranceElement: '> div',
		maxLevels: 3,
		isTree: true,
		expandOnHover: 700,
		startCollapsed: false
	});

	$('.disclose').on('click', function() {
		$(this).closest('li').toggleClass('mjs-nestedSortable-collapsed').toggleClass('mjs-nestedSortable-expanded');
	})

	$('#serialize').click(function(){
		serialized = $('ol.sortable').nestedSortable('serialize');
		$('#serializeOutput').text(serialized+'\n\n');
	})

	$('#toHierarchy').click(function(e){
		hiered = $('ol.sortable').nestedSortable('toHierarchy', {startDepthCount: 0});
		hiered = dump(hiered);
		(typeof($('#toHierarchyOutput')[0].textContent) != 'undefined') ?
		$('#toHierarchyOutput')[0].textContent = hiered : $('#toHierarchyOutput')[0].innerText = hiered;
	})

	$('#toArray').click(function(e){
		arraied = $('ol.sortable').nestedSortable('toArray', {startDepthCount: 0});
		arraied = dump(arraied);
		(typeof($('#toArrayOutput')[0].textContent) != 'undefined') ?
		$('#toArrayOutput')[0].textContent = arraied : $('#toArrayOutput')[0].innerText = arraied;
	})

});

function dump(arr,level) {
	var dumped_text = "";
	if(!level) level = 0;

	//The padding given at the beginning of the line.
	var level_padding = "";
	for(var j=0;j<level+1;j++) level_padding += "    ";

	if(typeof(arr) == 'object') { //Array/Hashes/Objects
		for(var item in arr) {
			var value = arr[item];

			if(typeof(value) == 'object') { //If it is an array,
				dumped_text += level_padding + "'" + item + "' ...\n";
				dumped_text += dump(value,level+1);
			} else {
				dumped_text += level_padding + "'" + item + "' => \"" + value + "\"\n";
			}
		}
	} else { //Strings/Chars/Numbers etc.
		dumped_text = "===>"+arr+"<===("+typeof(arr)+")";
	}
	return dumped_text;
}