
var map;

var myLatlng1 = new google.maps.LatLng(48.5671,13.44049);


var contentString1 = '<div class="marker-div">'+
				'<strong>Zahnarztpraxis Bauer</strong><br>' +
				'Neuburger Str. 49<br>' +
				'94032 Passau<br>' +
				'</div>';



function initialize() {
	
	var mapOptions = {
		zoom: 16,
		center: myLatlng1,
		mapTypeId: google.maps.MapTypeId.ROADMAP,
		scrollwheel: false
	}

	map = new google.maps.Map(document.getElementById('google-map'), mapOptions);

	var infowindow1 = new google.maps.InfoWindow({
		content: contentString1
	});
	
	

	var marker1 = new google.maps.Marker({
		position: myLatlng1,
		map: map,
	});

	infowindow1.open(map, marker1);

	
	google.maps.event.addListener(marker1, 'click', function() {
		infowindow.open(map, marker1);
	});

		
	google.maps.event.addListenerOnce(map, 'idle', function(){
		map.setCenter(myLatlng1);
	});
}

$(document).ready(function () {
	
	$('#gmaps_pos1').click(function() {
		map.setCenter(myLatlng1);
		$(this).addClass('btn-primary');
		
		var child = $(this).children('i');
		child.removeClass('myic-blue');
		child.addClass('myic-white');
		
		var child2 = $('#gmaps_pos2').children('i');
		child2.removeClass('myic-white');
		child2.addClass('myic-blue');
		
		$('#gmaps_pos2').removeClass('btn-primary')
	});
	
	
});

