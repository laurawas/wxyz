$(function() {
	if($('.shopify_api_product').length != 0) { // we are on the product gallery page
		setTimeout("open_grid();", 200);
		setTimeout("open_grid();", 500);
		setTimeout("open_grid();", 1000);
		setTimeout("open_grid();", 1500);
		setTimeout("open_grid();", 2000);
		setTimeout("open_grid();", 2500);
		setTimeout("open_grid();", 3000);
		setTimeout("open_grid();", 3500);
		setTimeout("open_grid();", 4000);
		setTimeout("open_grid();", 4500);
		setTimeout("open_grid();", 5000);
		setTimeout("open_grid();", 5500);
		setTimeout("open_grid();", 6000);
		setTimeout("open_grid();", 6500);
		setTimeout("open_grid();", 7000);
		setTimeout("open_grid();", 7500);
		setTimeout("open_grid();", 8000);
		setTimeout("open_grid();", 8500);
		setTimeout("open_grid();", 9000);
		setTimeout("open_grid();", 9500);
		setTimeout("open_grid();", 10000);
	}
	
	$(window).resize(function() {
		open_grid();
	});
	
});

function open_grid() {
	$('.shopify_api_product').css({'border-right': '2px #B1D81D solid', 'border-bottom': '2px #B1D81D solid', 'border-top': 'none'});
	var nexty;
	var lasty = $('.shopify_api_product').last();
	var rightmost = $('.shopify_api_product').last();
	var collection_height = $('.collection_pieces').height();
	$('.shopify_api_product').each(function(i, piece) {
		if($(piece).position().left > $(rightmost).position().left) {
			rightmost = piece;
		}
	});
	var incomplete_row = false;
	if($(rightmost).position().left > $(lasty).position().left) {
		incomplete_row = true;
	}
	
	$('.shopify_api_product').each(function(i, piece) {
		nexty = $(piece).next();
		if(nexty && $(nexty).position().left < 50) {
			$(piece).css('border-right', 'none');
		}
		if($(piece).position().top > (collection_height - 250)) {
			$(piece).css('border-bottom', 'none');
		}
	});
	
	if(incomplete_row) {
		var num_in_row = 0;
		$('.shopify_api_product').each(function(i, piece) {
			if($(piece).position().top == $(lasty).position().top) {
				num_in_row++;
				$(piece).css({'border-right': '2px #B1D81D solid'});
			}
		});
		if(num_in_row != 1) {
			$(lasty).css('border-right', 'none');
		}
	}
}