$(document).ready(function() {
	$(".hlinks").hover(
		function() {
			$(this).addClass("active");
		},
		function() {
			$(this).removeClass("active");
		}
	);

	// $("#form_url").submit(function(submit){   
 //    submit.preventDefault()
	//   $.ajax({
	//     method: "POST",
	//     url: "/urls",
	//     dataType: "JSON",
	//     data: {"long_url": $("#form_url").val()}
	//   })
	// 	.done(function(msg) {
	//   	// alert( "Data Saved: " + msg.id );
	//   	$(".results").append("<div>" + "<a href=\"http://localhost:9393/\">" + "http://localhost:9393/" + msg.shorturl + "</a>" + "</div>");
	//   	$(".results").append("<div>" + msg.clickcount + "</div>");
	//  	});	 	 
 //  });
});