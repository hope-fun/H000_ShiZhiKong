var comeFromCG0101Flag = false;
$(document).ready(function() {
	
		
		 var options = {
		   suppressTitle: true, 
		   message:null, 
		   doneCallback: null,
		   cancelCallback: null,
		   initOk:function() {
			   //this指向弹出框DOM根节点
									this.find("#cancel").css(
											"background",
											$('.jqPopupcg040102fangqi')
													.css('background')); //取消按钮
									this.find("#action").css(
											"background",
											$('.jqPopupcg040102fanji').css(
													'background')); //确定按钮
		   }
		  };
		window.kpyxConfirm1 = function(message,
									doneCallback, cancelCallback) {
		 window.scrollTo(0, window.pageYOffset);
		 options.message=message;
		 options.doneCallback=doneCallback;
		 options.cancelCallback=cancelCallback;
		 $(document.body).popup(options);
		}
	
	var playerIdArrayPrimaryBeforeArray = null;
	var playerIdArrayPrimaryNowArray = null;
	
	var playerIdArrayBeforeArray = null;
	
	var rivalPlayerIdArray = null;
		//初始化卡牌数组
		if(null != $("#playerCardIds").val())
			{
				playerIdArrayPrimaryBeforeArray =	$("#playerCardIdsPrimary").val().split(",");
				playerIdArrayPrimaryNowArray = $("#playerCardIdsPrimary").val().split(",");
				
				playerIdArrayBeforeArray=  $("#playerCardIds").val().split(",");
			}
		
		//初始化已经翻开的卡牌数量
		var getImagNumber = 0;
		//初始化敌方的卡牌
		if(null != $("#rivalPlayerCardIds").val())
			{
				rivalPlayerIdArray = $("#rivalPlayerCardIds").val().split(",");
			}
	
	
	
		$(".fightButtonForPeople").click(fightButtonForPeople);
		
		$(".zhenchakapai").bind("click",zhenchakapai);
		
		
		function fightButtonForPeople(){
				
				var enemyId = $(this).attr("enemyId");
				
				var playerCardIds = "NON";
				if(null != playerIdArrayBeforeArray)
					{
						playerCardIds = playerIdArrayPrimaryNowArray.join(",");
					}
				
//				var doJudgeUrl = $("#doJudgeUrl").val() + enemyId;
				var url = $("#fightactionEnough").val() + "/" + enemyId + "/true";
				var dofightUrl = $("#dofightUrl").val() + enemyId +"/"+playerCardIds;
				var randomParms = {anticache : Math.floor(Math.random()*1000)};
				$.post(url, randomParms, function(viewdate) {
				  if (viewdate != null) {
					if(viewdate.result==true){
						//开始战斗，发送战斗消息到客户端   add by ma_li talking game 数据分皙
						JSInterface.startPvpBattle(enemyName);
						window.location.href = dofightUrl;
					}else{
						if(viewdate.errorMessage!='OK')
							{
							kpyxTips(viewdate.data);
							return;
							}
						//弹出提示框
						var height = document.body.offsetHeight;
						var width = $('body').width();
						//document.getElementById("w-mask-dialog").style.height = height + "px";
						$("#w-mask-dialog").css('height',height+'px');
						$(".dialogue_container_parent").css('top', document.body.scrollTop+(window.screen.height-150)/2 + 'px');
						$(".w-mask-dialog").show();
						$(".dialogue_container").show();
//						kpyxConfirm(msg, function() {
//								window.location.href = dofightUrl ;
//								}, function(){
//								window.location.href = doComsumableUrl;	
//									
//								});
						}
					 }
					
				}, "json");
		}
		
		
		$(".fightButton").click(function() {
			
			
			var treasureFragmentId = $(this).attr("treasureFragmentId");
			var enemyId = $(this).attr("enemyId");
			var dofightUrl = $("#dofightUrl").val()+ treasureFragmentId + "/" + enemyId +"/";
//			var doComsumableUrl = $("#doComsumableUrl").val();
//			var msg = $("#showmessage").val();
//			var url = $("#doJudgeUrltreasure").val() + treasureFragmentId + "/" + enemyId;
			var url = $("#fightactionEnough").val() + "/" + enemyId;
			if(comeFromCG0101Flag){
				dofightUrl += "?comeFromCG0101=true";
			}
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post(url, randomParms, function(viewdate) {
			  if (viewdate != null) {
				if(viewdate.result==true){
					window.location.href = dofightUrl;
				}else{
					if(viewdate.errorMessage!='OK')
					{
						kpyxTips(viewdate.data);
					return;
					}
					//弹出提示框
					var height = document.body.offsetHeight;
					var width = $('body').width();
					//document.getElementById("w-mask-dialog").style.height = height + "px";
					$("#w-mask-dialog").css('height',height+'px');
					$(".dialogue_container_parent").css('top', document.body.scrollTop+(window.screen.height-150)/2 + 'px');
					$(".w-mask-dialog").show();
					$(".dialogue_container").show();
//					kpyxConfirm(msg, function() {
//							window.location.href = dofightUrl ;
//							}, function(){
//							window.location.href = doComsumableUrl;	
//								
//							});
					}
				 }
				
			}, "json");
		});	
		
		
		$("#quxiao").click(quxiao);	
		
		
		function quxiao(){
				$(".w-mask-dialog").hide();
				$(".dialogue_container").hide();
		}
		
		
		$("#goumai-green").click(goumaigreen);	
		
		function goumaigreen(){
			window.location.href =  $("#goumai").val();
		}
		
		
		$("#shiyong-green").click(shiyonggreen);	
	
		function shiyonggreen(){
			var url = $("#shiyong").val();
			var d1count = $("#d1count").val();
			var useConsumableTagUrl = $("#useConsumableTagUrl").val();
			if(eval(d1count)==0)
				{
					url=url+"D2";
				}else{
					url=url+"D1";
				}
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post(url, randomParms, function(viewdate) {
				  if (viewdate != null) {
					if(viewdate.result==true){
						
						$(".w-mask-dialog").hide();
						$(".dialogue_container").hide();
						
						//使用后数据更新
						$$.ajax({
							url : useConsumableTagUrl,
							success : function(response) {
								$("#consumableContent").html(response);
								$("#quxiao").click(quxiao);	
								$("#goumai-green").click(goumaigreen);	
								$("#shiyong-green").click(shiyonggreen);
								$("#consumableContent .clickTone1").each(function() {
									var that = $(this);
										if(that.css("opacity") != 1) /*禁用的按钮不监听事件*/
											return;
										$(this).get(0).addEventListener("touchstart",function(){
											that.css("opacity","0.5");
											tempTouchEventSrcElementHolder = that;
										});
										$(this).get(0).removeEventListener("click",function(){
											JSInterface.clickTone(1);
										},true);
										$(this).get(0).addEventListener("click",function(){
											JSInterface.clickTone(1);
										},true);
									});
								document.addEventListener("touchend",function(){
									if(tempTouchEventSrcElementHolder) {
										tempTouchEventSrcElementHolder.css("opacity","1");
										tempTouchEventSrcElementHolder = null;
									}
								});
								document.addEventListener("touchmove",function(){
									tempTouchEventSrcElementHolder.css("opacity","1");
									tempTouchEventSrcElementHolder = null;
								});
					     }
				       });
					
						
						
						updatePlayerInfo();
						if(viewdate.data != null){
							
							//判断是否使用道具，购买成功后向客户端发送消息   add by ma_li   talking game数据分析
							
							json = JSON.parse(viewdate.data);
							var info = "{\"consumableId\":"+ json.consumableName +",\"number\":" + 1 +"}";
							
							JSInterface.useConsumble(info);
						}
					}
				  }	
				  
				  
				}, "json");
	}
	
	$("#qiehuanzhanwei").click(orderRandom);
	
	$("#qiehuanzhanrong").click(doChangeGroup);
	
	//随机数据playerIdArray
	function  orderRandom()
	{
			
			var flag=true;
			
			while(flag)
			{
					  //更新原来的数组
					  playerIdArrayPrimaryNowArray.sort(function(){
						  return Math.random()>0.5?-1:1;
					  });
					  	//替换当前页面中的img的加载顺序
					  for(var i=0;i<playerIdArrayPrimaryNowArray.length;i++)
					  {
						  var j=i+1;
						  
						  if(playerIdArrayPrimaryBeforeArray[i]!=playerIdArrayPrimaryNowArray[i])
						  {
									  var before = playerIdArrayBeforeArray[i]=='BLANK'?'scard-smallcard':playerIdArrayBeforeArray[i];
									  var imagNowPosition = getImagBeforePosition(playerIdArrayPrimaryNowArray[i]);
									  var imagNowPositionSrcPosition = imagNowPosition+1;
									  var now = playerIdArrayBeforeArray[imagNowPosition]=='BLANK'?'scard-smallcard':playerIdArrayBeforeArray[imagNowPosition];
									  var beforeImg = $("#img_"+j).attr("src");
									  $("#img_"+j).attr("src",$("#img_"+j).attr("src").replace(before,now));
									  $("#img_"+imagNowPositionSrcPosition).attr("src",beforeImg);
									  //修改旧的数组中对应的值
									  var middle = playerIdArrayBeforeArray[imagNowPosition];
									  playerIdArrayBeforeArray[imagNowPosition] =playerIdArrayBeforeArray[i];
									  playerIdArrayBeforeArray[i] = middle;
									  
									  middle = playerIdArrayPrimaryBeforeArray[imagNowPosition];
									  playerIdArrayPrimaryBeforeArray[imagNowPosition] = playerIdArrayPrimaryBeforeArray[i];
									  playerIdArrayPrimaryBeforeArray[i] = middle;
									  flag = false;
						  }
					  }
					  
				 }
	}
		

	function getImagBeforePosition(primary)
	{
		for(var i=0;i<playerIdArrayPrimaryBeforeArray.length;i++)
			{
				if(playerIdArrayPrimaryBeforeArray[i] == primary)
					{
						return i;
					}
			}
	}


	function zhenchakapai(){
		var ob = this;
		var percent = getCanCanzhenchaPercent(getImagNumber);
		kpyxConfirm1($("#cg0401spenddiamond").val()+percent+$("#cg0401probability").val(),function(){
			judgeZhencha(ob);
		},function(){return false});
		
		
	}
	
	function judgeZhencha(ob){
		if(isCanzhencha()){
			
			//使用砖石
			var randomParms = {anticache : Math.floor(Math.random()*1000)};
			$.post($("#useDiamond").val()+"10", randomParms, function(viewdate) {
				  if (viewdate != null) {
							if(viewdate.result==true){
								
								var index = $(ob).attr("id").split("_")[2];
								$(ob).attr("src",$(ob).attr("src").replace(("zhenchakapai"),rivalPlayerIdArray[index]));
								getImagNumber++;
								$(ob).unbind("click",zhenchakapai);
							}else{
								kpyxTips(viewdate.data);
							}
				  }
			}, "json");
			
		}else{
			kpyxConfirm1($("#cg0401investigatefail").val(),function(){
				judgeZhencha(ob);
			},function(){return false});
		}
	}
	
	
	function isCanzhencha(){
		
		if(Math.random()*100<= getCanCanzhenchaPercent(getImagNumber))
			{
				return true;
			}
		return false;
		
	}
	
	function getCanCanzhenchaPercent(imagNumber){
				
				if(imagNumber==0)
					{
						return 50;
					}else if(imagNumber==1)
						{
							return 40;
						}else if(imagNumber==2)
							{
								return 30;
							}else if(imagNumber==3)
								{
									return 20;
								}
	}
	
	//切换整容
	function doChangeGroup() {
			var changeGroupUrl = $("#changeGroupUrl").val()+$("#playerCardGroupId").val()+"/"+ $(".fightButtonForPeople").attr("enemyId");;
			
			$$.ajax({
						url : changeGroupUrl,
						dataType : 'html',
						showMask : false,
						success : function(html) {
							$("#divcontent").html(html);
							playerIdArrayPrimaryBeforeArray =	$("#playerCardIdsPrimary").val().split(",");
							playerIdArrayPrimaryNowArray = $("#playerCardIdsPrimary").val().split(",");
							playerIdArrayBeforeArray=  $("#playerCardIds").val().split(",");
							$("#qiehuanzhanwei").bind("click", orderRandom);
							$("#qiehuanzhanrong").bind("click", doChangeGroup);
							$(".fightButtonForPeople").bind("click", fightButtonForPeople);
						}
			});
	}
	

});	







