$(document).ready(function(){
	$(".help-home-button img").click(goDetailPage);
	$(".help-home img").click(goDetailPage);
});

function goDetailPage(){
	location.href=page;
}