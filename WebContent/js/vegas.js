(function($) {
	$(document).ready(function(){
		$("body").vegas({
			delay:7500,
			slides:[
				{src:"img/bg1.jpg"},
				{src:"img/bg3.jpg"},
				{src:"img/checkbg.jpg"},
				{src:"img/bg2.jpg"}
			],
			overlay:"overlays/01.png",
			animation:"kenburnsUpLeft"
		})
	});
})(jQuery);
