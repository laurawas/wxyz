// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
    $('.fancybox').fancybox();
});
function show_next_image() {
	var next_one = $('.lookbook.veiled')[0];
	$('.lookbook.shown').removeClass('shown').addClass('elapsed');
	$(next_one).addClass('shown').removeClass('veiled');
}

function show_previous_image() {
	var next_one = $('.lookbook.elapsed').last();
	$('.lookbook.shown').removeClass('shown').addClass('veiled');
	$(next_one).addClass('shown').removeClass('elapsed');
}
