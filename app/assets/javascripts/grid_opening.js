$(function() {
	if($('.shopify_api_product').length != 0) { // we are on the product gallery page
		setTimeout("var nexty; \
		var collection_height = $('.collection_pieces').height(); \
		$('.shopify_api_product').each(function(i, piece) { \
			nexty = $(piece).next(); \
			if(nexty && $(nexty).position().left < 50) { \
				$(piece).css('border-right', 'none'); \
			} \
			if($(piece).position().top > (collection_height - 350)) { \
				$(piece).css('border-bottom', 'none'); \
			} \
		});", 1000);
	}
});
