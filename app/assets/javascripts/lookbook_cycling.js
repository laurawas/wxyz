if($('.lookbook').size != 0) { // we are on the lookbook page
	$(document).bind('keyup', function(e) {
		console.log(e.keyCode);
		if(e.keyCode == 39 || e.keyCode == 40) {
			show_next_image();
		}
		if(e.keyCode == 37 || e.keyCode == 38) {
			show_previous_image();
		}
	});
}