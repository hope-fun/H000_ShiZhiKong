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
	

	$("#hero").click(tabAction);
	$("#king").click(tabAction);
	$("#myth").click(tabAction);
	$("#general").click(tabAction);
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