$(document).ready(function() {
	$(".hlinks").hover(
		function() {
			$(this).addClass("active");
		},
		function() {
			$(this).removeClass("active");
		}
	);
});