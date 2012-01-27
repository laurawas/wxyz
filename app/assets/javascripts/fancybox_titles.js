$(document).ready(function() {
  $('.fancybox').fancybox({
	  beforeLoad: function(e) {
			$('.fancybox').each(function(i, img) {
				$(img).attr('title', $(img).data('fancybox-title'));
			});
		},
	  afterClose: function(e) {
		  $('.fancybox').each(function(i, img) {
			  $(img).attr('title', '')
		  });
	  }
	});
});
