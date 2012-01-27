var next_one;
var shown;
var designation;

function show_next_image() {
	next_one = $('.lookbook.veiled').first();
	designation = 'elapsed';
	if (next_one.length == 0) {
		next_one = $('.lookbook.elapsed').first();
		$('.elapsed').addClass('veiled').removeClass('elapsed');
		next_one.removeClass('veiled');
		designation = 'veiled';
	}
	$('.lookbook.shown').addClass('faded');
	setTimeout("$('.lookbook.shown').removeClass('shown').addClass(designation); \
	            $(next_one).addClass('shown').removeClass('veiled');", 400);
	setTimeout("$(next_one).removeClass('faded'); ensure_showing();", 500);
}

function show_previous_image() {
	next_one = $('.lookbook.elapsed').last();
	designation = 'veiled';
	if (next_one.length == 0) {
		next_one = $('.lookbook.veiled').last();
		$('.veiled').addClass('elapsed').removeClass('veiled');
		next_one.removeClass('elapsed');
		designation = 'elapsed';
	}
	shown = $('.lookbook.shown')
	$(shown).removeClass('shown').addClass('faded');
	setTimeout("$(shown).addClass(designation); \
	            $(next_one).addClass('shown').removeClass('veiled').removeClass('elapsed');", 400);
	setTimeout("$(next_one).removeClass('faded'); ensure_showing();", 500);
}

function ensure_showing() {
	$('.shown').removeClass('elapsed').removeClass('veiled').removeClass('faded');
}
