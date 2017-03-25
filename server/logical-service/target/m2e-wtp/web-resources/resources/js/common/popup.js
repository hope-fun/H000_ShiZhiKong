window.kpyxConfirm = function(message, doneCallback, cancelCallback) {
	window.scrollTo(0, window.pageYOffset);
	
	var options = {
			suppressTitle: true, 
			message:message, 
			doneCallback: doneCallback,
			cancelCallback: cancelCallback,
		};
	$(document.body).popup(options);
}

window.kpyxTips = function(message, doneCallback) {
	window.scrollTo(0, window.pageYOffset);
	
	var options = {
			suppressTitle: true,
			cancelOnly: true,
			message:message,
			doneCallback: doneCallback,
			};
	
	$(document.body).popup(options);
}

$(document).ready(function() {
	$('.confirm_popup').click(function(e) {
		var url = this.href;
		var message = $(this).attr("message");
		
		kpyxConfirm(message, function(){window.location.href = url;});
		
		e.preventDefault();
	});
	
	$('.tips_popup').click(function(e) {
		var message = $(this).attr("message");
		
		kpyxTips(message);
		
		e.preventDefault();
	});
});