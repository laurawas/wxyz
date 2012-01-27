$(function() {
	$('.portal img').mouseover(function() {
		$(this).attr('src', $(this).attr('src').split('.')[0] + '-title.png');
	});
	$('.portal img').mouseout(function() {
		$(this).attr('src', $(this).attr('src').split('-')[0] + '.png');
	});
})
