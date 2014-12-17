var affixheight;
var seopos;

function fixaffix() {
	if ($('#seo_row').length) {
		seopos = parseInt($('#seo_row').position().top);
	}
	
	if ($('.bs-docs-sidebar').length) {
		$('.bs-docs-sidebar').affix({
			offset: {top:$('.bs-docs-sidebar').position().top, bottom:550}
		});
	}
}
function fixmove() {
	$("ul.thumbnails > li").css('margin-left', '0px');
}
var adjustment;
var margins = new Array();
var paddings = new Array();
$(document).ready(function () {
	affixheight = $('.bs-docs-sidebar').height();
	setTimeout('fixaffix()', 1000);
	$("ul.thumbnails > li").css('margin-left', '0px');
});

$(window).load(function () {
    
});

$(document).scroll(function() {
	if ($(document).scrollTop() > seopos - affixheight - 40) {
		$('.bs-docs-sidebar').css('display', 'none');
	} else {
		$('.bs-docs-sidebar').css('display', 'block');
	}
});