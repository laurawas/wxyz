$(window).bind('resize', function() {
	console.log()
	$('.stasis').css('width', $('#basis').css('width'));
	$('.stasis').css('height', $(this).css('width'));
});