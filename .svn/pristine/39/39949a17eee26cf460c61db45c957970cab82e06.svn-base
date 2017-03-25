$(document).ready(function() {

	 backGrourdImgs = {
		general : {
			blue : "putongkabao-blue-b.png",
			yellow : "putongkabao-yellow-b.png"
		},
		hero : {
			blue : "yingxiongkabao-blue-b.png",
			yellow : "yingxiongkabao-yellow-b.png"
		},
		king : {
			blue : "wangzhekabao-blue-b.png",
			yellow : "wangzhekabao-yellow-b.png"
		},
		myth : {
			blue : "shenhuakabao-blue-b.png",
			yellow : "shenhaukabao-yellow-b.png"
		}
	};
	if (packagetype.activetype != "GENERAL") {
		$(".othertype").show();
		$(".generaltype").hide();
	}

	$(".buy").click(function() {

		location.href = buyaction + packagetype.activetype;
	});

	$(".check").click(function() {

		location.href = checkaction + $(this).attr("tag");
	});

//	$(".extract").click(function() {
//
//		location.href = extractaction + $(this).attr("tag");
//	});

	$("#general").click(tabAction);
	$("#hero").click(tabAction);
	$("#king").click(tabAction);
	$("#myth").click(tabAction);

	changeTabBackground();
});

function tabAction() {
	
	location.href = tabchange + packagetype.typeEnum[$(this).attr("id")];
}


function changeTabBackground(){
	var nowId=packagetype.activetype.toLowerCase();
	var $tab=$("#"+nowId);
    for(var p in backGrourdImgs){
   	 if(p==nowId){
   		 $tab.attr("src",'/kpyx-logical-service/resources/images/buttons/'+backGrourdImgs[nowId].yellow);
   	 }else{
   		 var $othTab=$("#"+p);
   		 $othTab.attr("src",'/kpyx-logical-service/resources/images/buttons/'+backGrourdImgs[p].blue);
   	 }
    }
}
