
$(document).ready(function(){
	$(".edit_groupCard").click(function(){
		var cardId = $(this).val();
		var urlPath = $(this).attr("urlValue");
		var playerCardGroupId = $("#edit_"+cardId).val();
		alert("------------->"+playerCardGroupId);
		var cardNeedStrengthRequire = $(".strengthRequire_"+cardId).text();
		var groupUsedStrengthRequire = $(".cardGroup_strengthRequire").val();
		var strengthRequireTotal = $(".cardGroup_strengthRequire").attr("maxvalue");
		var surplusStrengthRequire = strengthRequireTotal - groupUsedStrengthRequire +cardNeedStrengthRequire;
		var editPage = urlPath+"/"+surplusStrengthRequire+"/"+playerCardGroupId+"/"+"ATTK"+"/"+cardId;
		window.location.href=editPage;
	});
});