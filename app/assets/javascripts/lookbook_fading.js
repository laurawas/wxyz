var next_one;
var shown;

function show_next_image() {
	next_one = $('.lookbook.veiled')[0];
	$('.lookbook.shown').addClass('faded');
	setTimeout("$('.lookbook.shown').removeClass('shown').addClass('elapsed'); \
	            $(next_one).addClass('shown').removeClass('veiled');", 400);
	setTimeout("$(next_one).removeClass('faded');", 500);
}

function show_previous_image() {
	next_one = $('.lookbook.elapsed').last();
	shown = $('.lookbook.shown')
	$(shown).removeClass('shown').addClass('faded');
	setTimeout("$(shown).addClass('veiled'); \
	            $(next_one).addClass('shown').removeClass('elapsed');", 400);
	setTimeout("$(next_one).removeClass('faded');", 500);
}
