$(function() {
	//确定启动防御矩阵
	$("#confirm_useDefenseMatrix").click(function() {
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		
		$.post($("#useDefenseConfirm_url").val(), randomParms, function(message) {
			if (message != null) {
				if (message.result && message.data != null){
					var location_url = $("#treasureDetail_url").val() + message.data.playerTreasureId + "/" + message.data.id;
					//启动防御矩阵成功后回调函数
					kpyxTips($("#useDefenseMatrix_message").val(), 
						function() {
							window.location.href = location_url;
						});
				}
			}
		}, "json");
	});
	//点击碎片加载碎片详情
	$(".fragClick").click(function() {
		var groupIds = $(this).attr("id");
		var idVal = groupIds.split('_')[0]; 
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		if("" != idVal){
			//加载宝物详情
			$.post($("#detailUrl").val() + idVal, randomParms, function(message) {
				if (message != null) {
					if (message.result && message.data != null){
						//设置是否显示启动防御矩阵 及 碎片是否启动防御矩阵
						var orderNum = message.data.orderNumber;
						if(message.data.magicCircleCount!=null && message.data.magicCircleCount>0){
							$("#div_defenseMatrix").css("display", "block");
							$("#sp_magicCircleCount").html(message.data.magicCircleCount);

							$("#img_treasureFragment_magic").attr("src",$("#ImgFragmentUrl").val() + "magic-" + orderNum + ".png");
							$("#img_treasureFragment_magic").css("display", "block");
							$("#img_treasureFragment").css("display", "none");
							$("#img_treasure").css("height", "175px");
						}else{
							$("#div_defenseMatrix").css("display", "none");
							$("#sp_magicCircleCount").html(0);

							$("#img_treasureFragment").attr("src",$("#ImgFragmentUrl").val() + orderNum + ".png");
							$("#img_treasureFragment_magic").css("display", "none");
							$("#img_treasureFragment").css("display", "block");
							$("#img_treasure").css("height", "157px");
						}
						
						$("#sp_fragmentName").html(message.data.name);
						$("#sp_fragmentCount").html(message.data.count);
						$("#sp_defenseMatrixCount").html(
								(message.data.defenseMatrixCount != null && message.data.defenseMatrixCount > 0) ? message.data.defenseMatrixCount : 0);
						
						$("#img_treasure").css("backgroundImage", "url($('#ImgTreasureUrl').val() + message.data.treasureId + '.png')");
						
						//设置确定启动防御矩阵按钮的链接
						$("#useDefenseConfirmUrl").val($("#useDefenseUrl").val() + message.data.id);
						//设置争夺元素按钮的链接
						$("#allFightUrl").val($("#fightUrl").val() + message.data.treasureFragmentId + "/0");
					}
				}
			}, "json");
		}else{
			window.location.href = $("#fightUrl").val() + groupIds.split('_')[1] + "/0";
		}
	});
});

//进入防御矩阵确认
function go_useDefense(){
	window.location.href = $("#useDefenseConfirmUrl").val();
}

//进入战斗页
function go_fight(){
	window.location.href = $("#allFightUrl").val();
}

//进入战斗页
function go_fightById(treasureFragmentId){
	window.location.href = $("#fightUrl").val() + treasureFragmentId + "/0";
}
