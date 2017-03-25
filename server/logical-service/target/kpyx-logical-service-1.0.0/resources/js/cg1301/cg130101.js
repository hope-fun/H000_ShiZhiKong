var campTypes={"btn_allCamp":"NONE","btn_human":"HUMAN","btn_taitan":"TAITAN","btn_yiling":"LINGYI"};
$(document).ready(function(){
	var pIndex=parseInt(pageIndex);
	$("#btn_allCamp").click(getCampTypeAndFoForword);
	$("#btn_human").click(getCampTypeAndFoForword);
	$("#btn_taitan").click(getCampTypeAndFoForword);
	$("#btn_yiling").click(getCampTypeAndFoForword);
	
	$(".prepage_page").click(function(){
		getHandbook(campType,(pIndex==1)?(totalPage):(pIndex-1));
	});
	$(".nextpage_page").click(function(){
		getHandbook(campType,(pIndex==totalPage)?(1):(pIndex+1));
	});
	
});

function getCampTypeAndFoForword(){
	getHandbook(campTypes[$(this).attr("id")],pageIndex);
}
function getHandbook(nowCampType,pageIndex){
	location.href=page+"?campType="+nowCampType+"&page"+pageIndex;
}


