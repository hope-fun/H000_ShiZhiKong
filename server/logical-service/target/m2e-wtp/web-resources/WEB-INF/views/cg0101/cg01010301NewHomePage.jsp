<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="substr" uri="/WEB-INF/taglibs/SubstrDescriptor.tld"%>
<%@ taglib prefix="p" uri="/WEB-INF/taglibs/PathUtils.tld"%>
<%@ taglib prefix="cssutils" uri="/WEB-INF/taglibs/CssUtils.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags/utils"%>
<!-- 当请求中不含requestType时，更新此段 -->
<c:if test="${empty header['requestType']}">
	<script type="text/javascript" charset="utf-8"
		src="<p:fullurl value="/resources/js/cg0101/cg0101.js"/>"></script>
	<script type="text/javascript" charset="utf-8"
		src="<p:fullurl value="/resources/js/cg1601/cg1601.js"/>"></script>
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG1802.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0601.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0201/CG0201.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG1101.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG1601.css?v=1"/>">
	<link rel="stylesheet" type="text/css"
		href="<p:fullurl value="/resources/css/CG0101/CG01010301.css?v=1"/>" />

	<c:set var="homeUrl">
		<p:fullurl value="/cg0101/cg010103"></p:fullurl>
	</c:set>
	<c:set var="chatUrl">
		<p:fullurl value="/cg0101/cg010103/changeToChat"></p:fullurl>
	</c:set>
	<c:set var="taskUrl">
		<p:fullurl value="/cg0101/cg010103/changeToTask"></p:fullurl>
	</c:set>
	<c:set var="rewardUrl">
		<p:fullurl value="/cg0101/cg010103/changeToReward"></p:fullurl>
	</c:set>
	<c:set var="changeUrl">
		<p:fullurl value="/cg0101/cg010103/changeCardGroup"></p:fullurl>
	</c:set>
	<c:set var="baseUrl">
		<p:fullurl value="/"></p:fullurl>
	</c:set>

	<script type="text/javascript">
	// var     InterValObj = window.setInterval(updatePlayerInfo(), 4000);
		$(function(){
			//后台加载玩家各个卡组，并绑定点击功能，点击可切换卡组，通过隐藏/显示属性实现
			$.ajax({
				url: "${changeUrl}",
				headers : {
			          "requestType": "ajax",
			          "requestFrom": "cardGroup"},
				success: function(response){
					$(".refresh").html(response);
					if($(".refresh>div").length==0)
						{
							$(".img-change").css("display", "none");
						}
					index = 0;
					$(".img-change").click(function(){
						if($("#"+(++index))[0] == undefined) {
							if(index == 1) return;
							else {
								$("#"+(--index)).hide();
								index = 0;
								$("#"+index).show();
								$(".totalAttackAdded").text($("#attack" + index).val())
								$(".totalDefenceAdded").text($("#defence" + index).val())
							}
						}else {
							$("#"+(--index)).hide();
							$("#"+(++index)).show();
							$(".totalAttackAdded").text($("#attack" + index).val())
							$(".totalDefenceAdded").text($("#defence" + index).val())
						}
					})
					$(".refresh .clickTone1").each(function() {
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
				})
			
												
			function worldChatJsExchange() {
				/* $("input[name='message']")
						.attr(
								"onkeypress",
								"if(event.keyCode == 13) {messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg010102/publishMessage'/>'); return false;}"); */
				$(".tab-chat .label2").removeClass("hiddenForCG010103");
				$(".btn-union").removeAttr("inuse");
				$(".btn-world").attr("inuse", "");
				$("#chatRoom").html("");
				window
						.eval("if(typeof timeInterval != \"undefined\")"
								+ "clearInterval(timeInterval);"
								+ "styleFixer = function() {"
								+ "$(\"input[name='isLoudspeakerEnough']\").val() == \"true\"?$(\"#warning\").attr(\"style\", \"display:none\"):$(\"#warning\").removeAttr(\"style\");"
								+ "document.getElementById('chatRoom').scrollTop = document.getElementById('chatRoom').scrollHeight;"
								+ "};"
								+ "doAfterPrint = function(obj) {"
								+ "$(\"input[name='time']\").val(obj.refreshDate);"
								+ "$(\"input[name='isLoudspeakerEnough']\").val(obj.isLoudspeakerEnough);"
								+ "styleFixer();"
								+ "};"
								+ "$(function() {"
								+ "styleFixer();"
								+ "messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg010102/init'/>')"
								+ "});"
								+ "timeInterval = setInterval(\"messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg010102/getMessages'/>')\", 500000000);");
			}
			function unionChatJsExchange() {
				 /*$("input[name='message']")
						.attr(
								"onkeypress",
								"if(event.keyCode == 13) {messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg01010201/publishMessage'/>'); return false;}"); */
				$(".tab-chat .label2").addClass("hiddenForCG010103");
				$(".btn-world").removeAttr("inuse");
				$(".btn-union").attr("inuse", "");
				$("#chatRoom").html("");
				window
						.eval("if(typeof timeInterval != \"undefined\")"
								+ "clearInterval(timeInterval);"
								+ "styleFixer = function(){ "
								+ "document.getElementById('chatRoom').scrollTop = document.getElementById('chatRoom').scrollHeight;"
								+ "};"
								+ "$(function() {"
								+ "styleFixer();"
								+ "messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg01010201/init'/>')"
								+ "});"
								+ "doAfterPrint = function(obj) {"
								+ "$(\"input[name='time']\").val(obj.refreshDate);"
								+ "styleFixer();"
								+ "};"
								+ "timeInterval = setInterval(\"messagePublisher.DoRefresh('<p:fullurl value='/cg0101/cg01010201/getMessages'/>')\", 5000);");
			}
			
			//显示我的最强佣兵部分
			$("#0").show();

			
			function tabChange() {
				$(".img-task").unbind('click');
				$(".img-task").bind("click", function(){
					if($(".tab-task").is(":visible")) return;
					else {
						typeof timeInterval != "undefined"
							&& clearInterval(timeInterval);
						$$.ajax({
							url : "${taskUrl}",
							headers : {
								"requestType": "ajax",
					          	"requestFrom": "taskTab"
							},
							success : function(response) {
								$(".OverWritePanel").html(response);
								$(".tab-task").html($(".OverWritePanel .tab-task").html());	
								$(".OverWritePanel").html("");
								$(".tab-task").show();
								$(".tab-activity").hide();								
								$(".tab-reward").hide();
								$(".tab-chat").hide();
								$(".tab-task .clickTone1").each(function() {
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
								tabChange();
					     }
				       })
					}
		     });
				//活动页面
				$(".img-activity").unbind('click');
				$(".img-activity").click( function(){
					if($(".tab-activity").is(":visible")) return;
					else {
						typeof timeInterval != "undefined"
							&& clearInterval(timeInterval);
						$(".tab-task").hide();
						$(".tab-activity").show();
						$(".tab-reward").hide();
						$(".tab-chat").hide();
						
					}
				})
				
				//聊天页面
				$(".img-chat").unbind('click');
				$(".img-chat").click( function(){
					if($(".tab-chat").is(":visible")) return;
					else {
						$.get("${chatUrl}",function(response) {
							$(".tab-task").hide();
							$(".tab-activity").hide();
							$(".tab-reward").hide();
							$(".tab-chat").show();
						})
						//默认进入世界聊天处理工作
						worldChatJsExchange();
					}
				})
				
					//奖励页面
			$(".img-reward").unbind('click');		
			$(".img-reward").bind("click", function(){
				
				if($(".tab-reward").is(":visible")) return;
				else {
					typeof timeInterval != "undefined"
						&& clearInterval(timeInterval);
					
					$$.ajax({
						url : "${rewardUrl}",
						headers : {
							"requestType": "ajax",
				          	"requestFrom": "rewardTab"
						},
						success : function(response) {
							$(".OverWritePanel").html(response);
							$(".tab-reward").html($(".OverWritePanel .tab-reward").html());
							$(".OverWritePanel").html("");
							$(".tab-task").hide();
							$(".tab-activity").hide();
							$(".tab-reward").show();
							$(".tab-chat").hide();
								$(".tab-reward .clickTone1").each(function() {
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
							tabChange();
						}
					})
					
				}
			});
			}
			
			
			
			//首页四个Tab页面的点击切换
			tabChange()
			//任务页面
		
			
			
			$(".btn-world").click(function() {
				if ($(".btn-world").attr("inuse"))
					return;
				worldChatJsExchange();
			});

			$(".btn-union").click(function() {
				if ("${playerVO.unionId}" == "") {
					kpyxTips("<spring:message code='label.cg01010301.opencondition' />");
					return;
				}
				if ($(".btn-union").attr("inuse"))
					return;
				unionChatJsExchange();
			});
		});
		
		function doToggle() {
			$("input[name='useLoudspeaker']").val($("input[name='useLoudspeaker']").val() == "true"?"false":"true");
			this.src = $("input[name='useLoudspeaker']").val() == "true"?"<p:localurl value='/resources/images/checked.png'/>":"<p:localurl value='/resources/images/uncheck.png'/>";
		}
		
		
		
		function jumpToLimit(){
			//$("#commonActivities").hide();
			//$("#limitActivities").show();
			//$(".label1").hide();
			window.location.href="<p:fullurl value='/cg2101/cg210109/index'/>";
		}
		
		function jumpToNewYearActivity(){
			window.location.href="<p:fullurl value='/cg2501/cg250105/index' />"
		}
		
		function jumpToItensify(){
			window.location.href="<p:fullurl value='/cg0302/cg030201/index'/>";
		}
		function jumpToEvo(){
			window.location.href="<p:fullurl value='/cg0302/cg030207/index'/>";
		}
	
		function sendMessageClick(){
			if ($(".btn-union").attr("inuse")=='')
				{
				 messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg01010201/publishMessage'/>');
				}
			
			if ($(".btn-world").attr("inuse")=='')
			{
				messagePublisher.DoPublish('<p:fullurl value='/cg0101/cg010102/publishMessage'/>'); 
			}
		   
		}
	
		
		
	</script>
	<script type="text/javascript">
	
		/**玩家新手任务部分Js**/
	
		function confirmUrl(type) {
			switch(type) {
				//开启新手礼包
				case 'USE_FRESHMAN_GIFT':
					url = 'cg0601/cg060101/index';
					break;
				//领取新手福利
				case 'GET_FRESHMAN_REWARD':
					url = 'cg2201/cg220101/index';
					break;
				//开启蓝色装备宝箱
				case 'OPEN_EQUIPMENT_BOX_BLUE':
					url = 'cg0601/cg060101/index';
					break;
				//开启药水中号宝箱
				case 'OPEN_YAOSHUI_BOX_MIDDLE':
					url = 'cg0601/cg060101/index';
					break;
				//探索星际之门
				case 'TANSUO_XINGJI':
					url = 'cg1901/cg190102/index';
					break;
				//编辑阵容
				case 'EDIT_CARD_GROUP':
					url = 'cg0303/cg030301/index';
					break;
				//补充行动能量
				case 'RESUME_ACTION_POWER':
					url = 'cg0601/cg060101/index';
					break;
				//完成征程
				case 'COMPLETE_JOURNEY':
					url = 'cg0201/cg020101/index';
					break;
				//招募普通佣兵
				case 'RECRUIT_COMMON_CARD':
					url = 'cg0801/cg080102/index';
					break;
				//招募英雄佣兵
				case 'RECRUIT_HERO_CARD':
					url = 'cg0801/cg080102/tabchange/HERO';
					break;
				//招募王者佣兵
				case 'RECRUIT_KING_CARD':
					url = 'cg0801/cg080102/tabchange/KING';
					break;
				//招募传奇佣兵
				case 'RECRUIT_MYTH_CARD':
					url = 'cg0801/cg080102/tabchange/MYTH';
					break;
				//完成遭遇战
				case 'COMPETE_ZAOYUZHAN':
					url = 'cg0401/cg040104/index';
					break;
				//抢夺元素
				case 'GRAB_ELEMENT':
					url = 'cg0401/cg040102/index/0';
					break;
				//完成征程大章
				case 'COMPLETE_JOURNEY_CHAPTER':
					url = 'cg0201/cg020101/index';
					break;
				//合成佣兵
				case 'COMPOSE':
					url = 'cg0302/cg030201/index';
					break;
				//添加好友
				case 'ADD_FRIEND':
					url = 'cg0501/cg050106/nameSearch';
					break;
				//完成天梯赛
				case 'COMPLETE_TIANTISAI':
					url = 'cg2201/cg220107/index';
					break;
				//转生佣兵
				case 'EVOLUTION':
					url = 'cg0302/cg030207/index';
					break;
				//商店物品购买
				case 'SHOPPING':
					url = 'cg0901/cg090103/index';
					break;
				//补充战斗能量
				case 'RESUME_FIGHT_POWER':
					url = 'cg0601/cg060101/index';
					break;
				//给客服提反馈意见
				case 'CUSTOM_SERVICE':
					url = 'cg1501/cg150101/index';
					break;
					//神秘商店兑换装备
				case 'EXCHANGE_EQUIPMENT':
					url = 'cg0901/cg090106/index';
					break;
				default:
					url = 'cg0101/cg010103/index';
			}
			
			location.href = "${baseUrl}" + url;
		}
		
		//新手任务及日常任务领取
		function getReward(obj) {
			
			var $a = $(obj);
			$a.attr("onclick","");
			var url = $a.attr("id");
			$.get(url,function(json) {
				
				kpyxTips("<spring:message code='label.cg01010301.getreward.success' />"); 
				updatePlayerInfo();
				/**add by ma_li 2013-9-4  向客户端发送新手福利任务耗时消息**/
				if("${playerFreshmanTaskVO.day}" == 7){
					//json = JSON.parse(response);
					var startTime = json.playerWelfareStartTime;
					var endTime = new Date().getTime();
					var costTime = endTime - startTime;				
					var data = "{\"playerWTCTName\":新手福利任务耗时"+",\"newPlayerWelfareCostTime\":"+ costTime +"}";
					JSInterface.finishFreshmanTask(data);					
				}
				
				//新手福利任务完成七天任务最后一天赠送VIP，如果等级大于3时赠送VIP在商店等价的钻石
				if(json.isDiamond){
					var data = "{\"number\":"+json.diamondCount+",\"consumableId\":新手福利任务赠送钻石}";
					JSInterface.getDiamondFromSystem(data);
				}
				
				//日常任务获得钻石奖励
				if("${playerRegularTaskVO.getReward}" != null){
					if(json.isDiamond){
						var data = "{\"number\":"+ json.diamondCount +",\"consumableId\":日常任务赠送钻石}";
						JSInterface.getDiamondFromSystem(data);
					}
				}
				
				$a.removeClass("fc-normal-06-m");
				$a.addClass("fc-normal-05-m");
				
			if(url.indexOf("FreshmanTask")>=0) $("#tiaodong1").attr("value","false");
			else $("#tiaodong2").attr("value","false");
			
			var td1=$("#tiaodong1").attr("value");
			var td2=$("#tiaodong2").attr("value");
			
			if(td1=="false" && td2=="false"){
				$("#newTask_button").removeClass("rewardButton-task").addClass("eachButton");
			}
				
				
			})
		}
		
		function getGiftReward(obj) {
			obj.onclick = "";
			var options = {
					url : "<p:fullurl value='/cg0101/cg010103/getGift' />",
					data : {
						id:$(obj).attr("id"),
						type:$(obj).attr("type")
					},
					dataType : 'json',
					showMask : true,
					success : function(json) {
						updatePlayerInfo();
						//json = JSON.parse(resp);
						if (json.succeed) {
							//add by ma_li 判断是否为钻石，发送数量和来源数据到客户端， talking game数据分析  
							//系统赠送钻石包括：兑奖码，vip用户每日第一次赠送钻石，拍卖行购买，装备分解，商品下架
							
							if(json.isDiamond){					
								var data = "{\"number\":" + json.diamondCount+ ",\"consumableId\":系统赠送钻石" + "}";
								JSInterface.getDiamondFromSystem(data);
							}
							
							updatePlayerInfo();
							kpyxTips("<spring:message code='label.cg01010301.draw.success' />");
						}else
							kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
						var pNode = (function(){
							var temp = $(obj).parent();
							while(!temp.hasClass("giftItem"))
								temp = temp.parent();
							return temp;
						}());
						pNode.remove();
					}
			}
			$.ajax(options);  
		}
		
//每日登陆奖励的领取		
		function getdailyGiftReward(obj) {
			obj.onclick = "";
			var options = {
					url : "<p:fullurl value='/cg0101/cg010103/getdailyGift' />",
					data : null,
					dataType : 'json',
					showMask : true,
					success : function(json) {
						if (json.succeed=="true") {
							//add by ma_li 判断是否为钻石，发送数量和来源数据到客户端， talking game数据分析  
							//系统赠送钻石包括：兑奖码，vip用户每日第一次赠送钻石，拍卖行购买，装备分解，商品下架							
							if(json.isDiamond){					
								var data = "{\"number\":" + json.diamondCount+ ",\"consumableId\":系统赠送钻石" + "}";
								JSInterface.getDiamondFromSystem(data);
							}
							
							updatePlayerInfo();
							kpyxTips("<spring:message code='label.cg01010301.draw.success' />");
							var pNode = (function(){
								var temp = $(obj).parent();
								while(!temp.hasClass("dailygiftItem"))
									temp = temp.parent();
								return temp;
							}());
							pNode.remove();
						}else{
							if(json.fullcards=="true") kpyxTips("<spring:message code='label.cg01010301.draw.faultreason.reachupper' />");
							else kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
						}
						
					}
			}
			$.ajax(options);
			
		}
		
		$(function(){
			
			
			if(${giftMsg}>0){
				
				$("#newReward_button").removeClass("eachButton1").addClass("eachButtonSpecil");
			}
			if(${hasFreshmanTaskReward} ||${hasRegularTaskReward} ){
				$("#newTask_button").removeClass("eachButton").addClass("rewardButton-task");
			}
			
		});	
		//领取全部奖励		
		
		function getAllRewards(obj) {
			obj.onclick = "";
			var options = {
					url : "<p:fullurl value='/cg0101/cg010103/getAllRewards' />",
					data : {
						id:$(obj).attr("id"),
						type:$(obj).attr("type")				  
					},
					dataType : 'json',
					showMask : true,
					success : function(json) {
						updatePlayerInfo();
						//json = JSON.parse(resp);
					
						if (json.succeed=="true") {
							updatePlayerInfo();
							kpyxTips("<spring:message code='label.cg01010301.draw.success' />");
							$("#getAllRewards").hide();
							$("#newReward_button").removeClass("eachButtonSpecil").addClass("eachButton1");	
							
						}else{
							if(json.fullcards=="true") kpyxTips("<spring:message code='label.cg01010301.draw.faultreason.reachupper' />");
							else kpyxTips("<spring:message code='label.cg01010301.draw.fault' />");
							
						}
							
						
					}
			}
			$.ajax(options);
		}
		
		/*function generateNumImg(val,imgSrc){	
				if (isNaN(val))
					return;	
				var valStr = new String(val);
				var dataString = "";
				for (var i = 0, len = valStr.length; i < len; i++)
					dataString += "<img src='"+imgSrc+ valStr[i] + ".png' />";		
				return dataString;
			}
		$(function() { 
			
			$(".totalDefenceNum").html(generateNumImg(${totalDefenceAdded},'<p:localurl value='/resources/images/totalDefence/'/>'))
			$(".totalAttackNum").html(generateNumImg(${totalAttackAdded},'<p:localurl value='/resources/images/totalAttack/'/>'))
		});  */

		
		function useAllActionPower(obj) {
			var func = obj.onclick;
			var a=$("#fenpeicishu").val();
			obj.onclick = "";
			var options = {
					url : "<p:fullurl value='/cg0101/cg010103/useAllActionPower' />",
					dataType : 'json',
					showMask : true,
					success : function(resp) {
						if (resp.succeed) {
						    var srin = 	'<div class="messageOfUseAction"><span><spring:message code="label.cg01010301.cost"></spring:message>'+resp.costActionPower+'<spring:message code="label.cg01010301.costattackpower"></spring:message></span><br></br><span><spring:message code="label.cg01010301.attackpoweradd"></spring:message>'
						               +resp.silverCoin+'<spring:message code="label.cg01010301.costcystal"></spring:message></span>'+resp.actionToExp+'<span><spring:message code="label.cg01010301.exp"></spring:message></span><div class="tips-info-style"><span style="color:gray;">Tips:<spring:message code="label.cg01010301.addedinfo"></spring:message></span></div></div>';
						   kpyxTips(srin);
							//kpyxTips("您消耗了"+resp.costActionPower+"行动能量,增加了"+resp.silverCoin+"水晶,"+resp.actionToExp+"经验,"+"1行动能量获得1水晶和1经验");
							$.ajax({
								type:'GET',
								url:"<p:fullurl value='/player/getPlayerInfo'/>",
								dataType : 'json',
								success:function (data) {
									data.success ? JSInterface.updatePlayerInfo(new WebViewJavascriptBridgeTransInfo(data)):
										(function() {console.log("getPlayerInfoError!")}());
									
									obj.onclick = func;
								},
							});
							$("#fenpeicishu").attr("value",$("#fenpeicishu").val()-1);
						}
						else {
							kpyxTips("<spring:message code='label.cg01010301.attackpowerless' />");
							obj.onclick = func;
						}	
					}
			}
			$.ajax(options);
		}
	</script>
	<script type="text/javascript">
		/**兑奖码功能部分Js**/
		
		function myClick() {
			
			doSubmit()
			$("#code").val("");
		}
	
		function doSubmit() {
			var codeForm = document.forms.codeForm
			var value = codeForm.code.value
			codeForm.code.value = ''
			codeForm.code.blur()
			if(value != null && value != "") {
				$$.ajax({
				    url: codeForm.action + "?code=" + value,
			      	type: "POST",
			      	data: null,
			      	dataType: 'json',
			      	showMask: false,
			      	success: function(resp) {
			      	//判断当前是的奖励是否为卡牌，玩家卡牌数是否为达到卡牌上线
						
							if (resp.playerCodeFeedback != null) {
								msg(resp.playerCodeFeedback, resp.count);
								 /**add by ma_li 向客户端发送从对奖码获得钻石的消息**/	
								/* json = JSON.parse(resp);
								if(json.isDiamond){
									var data = "{\"num\":"+json.diamondCount+",\"reason\":兑奖码"+ "}";
									JSInterface.getDiamondFromSystem(data);
								}
								 */
								
							} else {								
								kpyxTips("<spring:message code='label.cg01010301.exchangelfault' />");
							}
			      	}
				})
			}else {
				kpyxTips("<spring:message code='label.cg01010301.inputrightcode' />");			
				return false
			}
		}
	
		function msg(feedback, count) {
			switch(parseInt(feedback)) {
			case 0 :
				kpyxTips("<spring:message code='label.cg01010301.inputrightcode' />")
				return false;
			case 1 :
				kpyxTips("<spring:message code='label.cg01010301.codepastdue' />")
				return false;
			case 2 :
				kpyxTips("<spring:message code='label.cg01010301.codeused' />")
				return false;
			case 3 :
				kpyxTips("<spring:message code='label.cg01010301.cannotusecode' />")
				return false;
			case 4 :
				kpyxTips("<spring:message code='label.cg01010301.cannotusespecialcode' />")
				return false;
			case 5 :
				kpyxTips("<spring:message code='label.cg01010301.youused' />")
				return false;
			case 6 : 
				kpyxTips("<spring:message code='label.cg01010301.maxused' />")
				return false;
			case 7 :
				$("#newReward_button").addClass("eachButtonSpecil");
				 var st="<p:fullurl value='/cg0101/cg010103/index?module=2'/>";
				kpyxTips("<spring:message code='label.cg01010301.exchangesuccess' />",function(){window.location.href =st});	
				JSInterface.setMsgCount(count);
				return false;
			case 8 :
				kpyxTips("<spring:message code='label.cg01010301.exchangefault' />")
				return false;
			case 9 :
				kpyxTips("<spring:message code='label.cg01010301.code.specialunion' />")
				return false;
			case 15 :
				kpyxTips(document.getElementById("code-cardsmax-message").innerHTML);
				return false;
			}
		}
	</script>
	<script type="text/javascript">
	
		/**关于首页排行榜的点击切换js**/
		
		//定义排行榜类型：最强玩家，最强卡牌，星际争霸，最强慈善家
		var listType = new Array("BEST_PLAYER", "BEST_CARD", "BEST_FIGHTER", "BEST_PHILANTHROPIST");
		var clicks = 0;
		var selector = ".list-content";
		
		//点击左侧按钮：向前切换排行榜
		function clickLeftArrow() {
			if(-- clicks < 0) {
				clicks = 3;
			}
			ajaxForPlayerList(clicks);
		}
		//点击右侧按钮：向后切换排行榜
		function clickRightArrow() {
			if(++ clicks > 3) {
				clicks = 0;
			}
			ajaxForPlayerList(clicks);
		}
	
		function ajaxForPlayerList(clicks) {
			var url = "${homeUrl}" + "/changeList/" + listType[clicks]
			
			$$.ajax({
				url : url,
				headers : {
			          "requestType": "ajax",
			          "requestFrom": "playerList"},
			    success : function(response) {
			    	$(selector).html(response)
			    }
			})
		}
	</script>
	<script>
	var SysSecond;
	var InterValObj;
	$(document).ready(function(){
				SysSecond = ${leftTime}/1000;
				InterValObj = window.setInterval(SetRemainTime, 1000); //间隔函数，1秒执行 
		}); 

		function SetRemainTime() { 
		  	if (eval(SysSecond) > 1) {
			  SysSecond = SysSecond - 1; 
			  var second = Math.floor(SysSecond % 60);             // 计算秒
			  var minite = Math.floor((SysSecond / 60) % 60);      //计算分 
			  var hour = Math.floor((SysSecond / 3600)%24);//计算小时
			  var day=Math.floor(SysSecond/3600/24)//计算天
			  $("#leftTime").html(day + "<spring:message code='label.cg120112.union.day' /> " + hour + "<spring:message code='label.cg120112.union.hour' /> " + minite + "<spring:message code='label.cg120112.union.minutes' /> " + second + "<spring:message code='label.cg120112.union.seconds' />");
			} else {//剩余时间小于或等于0的时候，就停止间隔函数 
				window.clearInterval(InterValObj);
				window.location.href="<p:fullurl value='/cg0101/cg010103/index'/>";
			}
		}
	</script>
	<script>
	 function countGift(){
		 var i=$(".task-body").children("div.panel-01").length;
		 i=i-1;
		 if(i<1){
			 //$(".giftMsgPop").hide();
			 $("#newReward_button").removeClass("eachButtonSpecil").addClass("eachButton1");	
			 $("#getAllRewards").hide();
		 }
	 }
	 
	$(function() { 	
		var activity =location.href.substring(location.href.indexOf("=")+1); 
			var a=${whichModule};
			//alert(a);
			if(a=="0") $(".img-task").click();
			if(a=="1") $(".img-activity").click();				
			if(a=="2") $(".img-reward").click();
			if(a=="3") {
				$(".img-chat").click();
				$("#boardcast").click();
			}
			
		}); 

	function copyAccount(){
		JSInterface.copyAccount("星际L0L");
	}
    
	function useCounsumableConfirm(obj){
	
		 var options = {
				   suppressTitle: true, 
				   message:null, 
				   doneCallback: null,
				   cancelCallback: null,
				   initOk:function() {
					   //this指向弹出框DOM根节点
								var message = this.find(".message");
					   			message.addClass("cg01010301-message");
				   }
		 };
		window.kpyxConfirm2 = function(message,	doneCallback, cancelCallback) {
				 window.scrollTo(0, window.pageYOffset);
				 options.message=message;
				 options.doneCallback=doneCallback;
				 options.cancelCallback=cancelCallback;
				 $(document.body).popup(options);
		}			
		
		kpyxConfirm2($("#useConfirm").val()+"</br>"+"<div class='free-times'>"+$("#jinrimianfei").val()+$("#fenpeicishu").val()+"<spring:message code='label.cg01010301.times' />"+"</div>",function(){
			useAllActionPower(obj);
		},function(){
			return false;
		})
	}
	
	function setAttrPoint(){
		location.href="<p:fullurl value='/cg0101/cg010105/index/'/>"+"NO";
	}
	

	</script>

	<div class="content">
		<div class="panel1">
			<div class="panel1-left"
				style="overflow: hidden;text-align:center;background:url(<p:localurl value="/resources/images/homePage/back.PNG"/>) center center no-repeat;">


				<input type="hidden" id="loudspeakernotenough"
					value="<spring:message code='label.cg0101.loudspeakernotenough' />" />
				<input type="hidden" id="speaktoofast"
					value="<spring:message code='label.cg0101.speaktoofast' />" /> <input
					type="hidden" id="cg0101inputnull"
					value="<spring:message code='label.cg0101.inputnull' />" /> <input
					type="hidden" id="illegalcharacter"
					value="<spring:message code='label.cg0101.illegalcharacter' />" />
				<input type="hidden" id="rewardsuccess"
					value="<spring:message code='label.cg01010301.draw.success'/>" />
				<input type="hidden" id="rewardfail"
					value="<spring:message code='label.cg01010301.draw.fault'/>" /> <input
					type="hidden" id="useConfirm"
					value="<spring:message code='label.cg01010301.yijianxiaohao' />" />
				<input type="hidden" id="jinrimianfei"
					value="<spring:message code='label.cg01010301.jinrimianfei' />" />
				<input type="hidden" id="fenpeicishu"
					value="${playerVO.actionPowerUseOutTimes}" /> <input type="hidden"
					id="sensitive1"
					value="<spring:message code='label.cg01010301.sen1' />" /> <input
					type="hidden" id="sensitive2"
					value="<spring:message code='label.cg01010301.sen2' />" /> <input
					type="hidden" id="tiaodong1" value="${hasFreshmanTaskReward}" /> <input
					type="hidden" id="tiaodong2" value="${hasRegularTaskReward}" />
				<div class="OverWritePanel" style="display: none;"></div>
</c:if>
<!-- 当请求类型为ajax且来自playerList时，更新此段 -->
<input type="hidden" id="attack0" value="${totalAttackAdded }" />
<input type="hidden" id="defence0" value="${totalDefenceAdded }" />

<!-- 当请求中不含requestType时，更新此段 -->
<c:if test="${empty header['requestType']}">
	<div class="clearfix"></div>
	<div class="panelSide">
		<!--  <div class="eachButton">
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg0101/cg010106/index?totalAttackAdded=${totalAttackAdded }&totalDefenceAdded=${totalDefenceAdded }"/>'"
				src="<p:localurl value="/resources/images/homePage/ziliao.png"/>">
		</div>-->
		<div class="eachButton">
			<img class="clickTone1"
				onclick="location.href='<p:fullurl value="/cg0901/cg090101/index"/>'"
				src="<p:localurl value="/resources/images/homePage/chongzhi.png"/>">
		</div>
		<div class="eachButton">
			<img class="img-chat clickTone1"
				src="<p:localurl value="/resources/images/homePage/liaotian-blue-b.png"/>">
		</div>
		<div class="eachButton1">
			<img class="clickTone1"
				src="<p:localurl value="/resources/images/homePage/paihang.png"/>"
				onclick='location.href="<p:fullurl value="/cg2301/cg230101/index"/>"' />
		</div>
	</div>

	<div class="panel1-right hiddenForCG010103" id="0">
		<div class="card-img">
			<c:forEach items="${playerCards }" var="item" varStatus="itemStatus">
				<c:if test="${empty item.id }">
					<c:set var="src">
						<p:localurl value="/resources/images/homePage/wuren.PNG" />
					</c:set>
				</c:if>
				<c:if test="${not empty item.id }">
					<c:set var="src">
						<p:localurl
							value="/resources/images/cards/homePageCards/${item.cardId }.jpg" />
					</c:set>
				</c:if>
				<c:set var="classValue">clickTone1 img img-small</c:set>
				<c:if test="${itemStatus.first }">
					<c:if test="${not empty item.id }">
						<c:set var="src">
							<p:localurl
								value="/resources/images/cards/homePageCards/${item.cardId }.jpg" />
						</c:set>
					</c:if>
					<c:if test="${empty item.id }">
						<c:set var="src">
							<p:localurl value="/resources/images/homePage/wuren.PNG" />
						</c:set>
					</c:if>
					<c:set var="classValue">clickTone1 img</c:set>
				</c:if>
				<c:if test="${(itemStatus.index eq 1) or (itemStatus.index eq 2) }">
					<c:set var="classValue">clickTone1 img img-small img-small-up</c:set>
				</c:if>
				<c:if test="${not empty item.id }">
					<img src='${src }' class="${classValue }"
						onclick="location.href='<p:fullurl value="/cg0301/cg030102/index/${item.id }"/>'" />
				</c:if>
				<c:if test="${empty item.id }">
					<img src='${src }' class="${classValue }" />
				</c:if>
			</c:forEach>
		</div>
		<!-- 将总攻击及防御力隐藏，点击转换卡组时加载至对应位置 -->
		<input type="hidden" id="attack0" value="${totalAttackAdded }" /> <input
			type="hidden" id="defence0" value="${totalDefenceAdded }" />
	</div>
	<div class="panelSide">

		<div class="eachButton" style="display: none;">
			<img class="img-activity clickTone1"
				src="<p:localurl value="/resources/images/homePage/huodong-blue-b.png"/>">
		</div>
		<div class="eachButton">
			<img class="clickTone1"
				src="<p:localurl value="/resources/images/homePage/zhanji-blue-b.png"/>"
				onclick='location.href="<p:fullurl value="/cg0101/cg010104/index"/>"' />
		</div>


		<div class="eachButton" id="newTask_button">
			<img class="img-task clickTone1 blink" id="flight_task"
				src="<p:localurl value="/resources/images/homePage/meirirenwu-blue-b.png"/>">
		</div>
		<div class="eachButton1" id="newReward_button">
			<img class="img-reward clickTone1 blink" id="flight_reward"
				src="<p:localurl value="/resources/images/homePage/jiangli-blue-b.png"/>">
		</div>
	</div>
	<div class="clearfix"></div>
	<div class="panel-attackanddefence">
		<div class="totalOfAttack">
			<img
				src="<p:localurl value="/resources/images/homePage/zongzhandouli.png"/>">
		</div>
		<div class="totalAttackNum">
			<span style="font-size: 18pt">${totalAttackAdded}</span>
		</div>

		<div class="totalOfDefence">
			<img
				src="<p:localurl value="/resources/images/homePage/zonghudunli.png"/>">
		</div>
		<div class="totalDefenceNum">
			<span style="font-size: 18pt">${totalDefenceAdded}</span>
		</div>
	</div>
	</div>
	<div class="refresh">
</c:if>

<!-- 当请求中不含requestType或请求来自卡组时，更新此段 -->
<c:if test="${empty header['requestType']}">

	</div>
	<div class="clearfix"></div>
	</div>
	<div class="best-player">
		<img
			onclick="location.href = '<p:fullurl value="/cg2201/cg220107/playerDetail/${bestPlayer.playerId }?urlFrom=cg230101" />';event.preventDefault();"
			src="<p:localurl value="/resources/images/homePage/zuiqiangwanjia.png"/>">

	</div>
	<div class="bestPlayer-name">
		<span style="font-size: 18pt">${bestPlayer.playerName}</span>
	</div>
	<div class="bestPlayer-conquest">
		<span style="font-size: 18pt">${bestPlayer.conquestPoints}</span>
	</div>
	<div class="clearfix"></div>

	<c:if test="${fn:length(msgList)>0}">
		<div
			style="text-align: center; padding-top: 12px; padding-bottom: 20px;">
			<img
				src="<p:localurl value="/resources/images/homePage/zhanji.PNG"/>">
			<div id="Marquee"
				style="padding-left: 100px; padding-right: 50px; margin-top: -55px;">

				<c:forEach items="${msgList }" var="item" varStatus="itemStatus">
					<marquee style="display: none;" id="marquee_${itemStatus.index}"
						scrollamount="80" behavior="slide">
						<span style="color: rgb(0, 252, 255);">${item.timeStr }</span>
						<c:if test="${item.msgType eq 'FRIENDAPPLY' }">
							<a style="color: white;"
								href="<p:fullurl value="/cg1101/cg110101/index"/>"><span>${item.name}</span></a>
							<span style="color: yellow;"><spring:message
									code='label.cg01010301.friend.apply' /></span>
						</c:if>
						<c:if test="${item.msgType eq '0' }">
							<span style="color: yellow;"><spring:message
									code='label.cg01010301.you' /></span>
							<a style="color: white;"
								href="<p:fullurl value="/cg0501/cg050107/index/${item.eId }/homePage"/>"><span>${item.name}</span></a>
							<span style="color: yellow;"><spring:message
									code='label.cg01010301.attacked' /></span>
							<span style="color: rgb(0, 252, 255);"><spring:message
									code='label.cg01010301.fanji${item.result}' /></span>
						</c:if>
						<c:if test="${item.msgType eq '1' }">
							<span style="color: yellow;"><spring:message
									code='label.cg01010301.youattack' /></span>
							<a style="color: white;"
								href="<p:fullurl value="/cg0501/cg050107/index/${item.eId }/homePage"/>"><span>${item.name}</span></a>
							<span style="color: rgb(0, 252, 255);"> <spring:message
									code='label.cg01010301.gongji${item.result}' /></span>
						</c:if>
					</marquee>
				</c:forEach>


			</div>
		</div>
	</c:if>
	<!-- 当请还有未分配的属性点时，更新此段 -->
	<c:if test="${playerVO.restAttrPoints > '0'}">


		<div class="task-body " style="margin: 15px;">
			<div class="borderPanel">
				<div class="panelB-header"></div>
				<div class="panelB-body panelB01-height panel-fenpei-height"></div>
				<div class="panelB-footer"></div>
				<div class="border-content-noleft">
					<div class="fenpeilableText">
						<span class="fc-content-01"><spring:message
								code="label.cg010103.haiyoushuxingfenpei"
								arguments="${playerVO.restAttrPoints}"></spring:message></span>
					</div>
					<div class="buttonfenpei ">
						<img class="imgfenpei clickTone1"
							src='<p:localurl value="/resources/images/buttons/fenpei.PNG"/>'
							onclick="setAttrPoint()" />
					</div>

				</div>
			</div>
		</div>
	</c:if>
</c:if>
<c:if
	test="${empty header['requestType'] or (header['requestType'] == 'ajax' and header['requestFrom'] == 'taskTab') }">
	<div class="tab-task hiddenForCG010103">
		<div class="tabpanel">

			<div class="clearfix"></div>

			<c:if test="${not empty playerFreshmanTaskVO }">
				<div class="task-body">
					<div class="panelA-header"></div>
					<div class="panelA-body panelA04-height freshman-task-height">
						<div class="task-up">
							<div class="text1">
								<span><spring:message code='label.cg01010301.freshtask' /></span>
							</div>
							<div class="text2">
								<span><spring:message code='label.cg01010301.reward' />
									<c:out value="${freshmanTaskVO.rewardDescription }"></c:out></span>
							</div>
							<div class="text3">
								<c:if
									test="${not empty playerFreshmanTaskVO.completeTime && !playerFreshmanTaskVO.getReward}">
									<a class="fc-normal-06-m fs-underline"
										id="<p:fullurl value="/cg0101/cg010103/getFreshmanTaskReward/${playerFreshmanTaskVO.day }"/>"
										onclick='if("${playerFreshmanTaskVO.firstTime}"){
											JSInterface.startFreshmanTask("新手福利任务次数");} getReward(this)'>
										<span><spring:message code='label.cg01010301.get' /></span>
									</a>
								</c:if>
								<c:if
									test="${empty playerFreshmanTaskVO.completeTime || playerFreshmanTaskVO.getReward}">
									<a class="fc-normal-05-m fs-underline"><span><spring:message
												code='label.cg01010301.get' /></span></a>
								</c:if>
							</div>
						</div>
						<div>
							<img
								src="<p:localurl value="/resources/images/line-split-down.png"/>"
								class="line-split-down" />
							<div class="note">
								<span class="fc-normal-06-m"><spring:message
										code='label.cg01010301.continue.getreward' /></span>
							</div>
						</div>
						<div>
							<div class="task-list">
								<div class="task-list-1">
									<span>${freshmanTaskVO.task1Description }</span>
								</div>
								<div class="task-list-2">
									<c:if test="${playerFreshmanTaskVO.task1 eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
									<c:if test="${playerFreshmanTaskVO.task1 ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<span class="fc-normal-06-m">${empty
										playerFreshmanTaskVO.task1 ? 0 :
										(freshmanTaskVO.task1Count-playerFreshmanTaskVO.task1)}</span> <span>/${freshmanTaskVO.task1Count
										}</span>
								</div>
								<c:if test="${playerFreshmanTaskVO.task1 ne 0 }">
									<div class="task-list-3">
										<span class="fc-normal-06-m fs-underline"
											onclick="confirmUrl('${freshmanTaskVO.task1Type}')"><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
								<c:if test="${playerFreshmanTaskVO.task1 eq 0 }">
									<div class="task-list-3">
										<span class="fc-normal-05-m fs-underline" onclick=""><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
							</div>
							<div class="task-list">
								<div class="task-list-1">
									<span>${freshmanTaskVO.task2Description }</span>
								</div>
								<div class="task-list-2">
									<c:if test="${playerFreshmanTaskVO.task2 eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
									<c:if test="${playerFreshmanTaskVO.task2 ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<span class="fc-normal-06-m">${empty
										playerFreshmanTaskVO.task2 ? 0 :
										(freshmanTaskVO.task2Count-playerFreshmanTaskVO.task2)}</span> <span>/${freshmanTaskVO.task2Count
										}</span>
								</div>
								<c:if test="${playerFreshmanTaskVO.task2 ne 0 }">
									<div class="task-list-3">
										<span class="fc-normal-06-m fs-underline"
											onclick="confirmUrl('${freshmanTaskVO.task2Type}')"><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
								<c:if test="${playerFreshmanTaskVO.task2 eq 0 }">
									<div class="task-list-3">
										<span class="fc-normal-05-m fs-underline" onclick=""><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
							</div>
							<div class="task-list">
								<div class="task-list-1">
									<span>${freshmanTaskVO.task3Description }</span>
								</div>
								<div class="task-list-2">
									<c:if test="${playerFreshmanTaskVO.task3 eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
									<c:if test="${playerFreshmanTaskVO.task3 ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<span class="fc-normal-06-m">${empty
										playerFreshmanTaskVO.task3 ? 0 :
										(freshmanTaskVO.task3Count-playerFreshmanTaskVO.task3)}</span> <span>/${freshmanTaskVO.task3Count
										}</span>
								</div>
								<c:if test="${playerFreshmanTaskVO.task3 ne 0 }">
									<div class="task-list-3">
										<span class="fc-normal-06-m fs-underline"
											onclick="confirmUrl('${freshmanTaskVO.task3Type}')"><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
								<c:if test="${playerFreshmanTaskVO.task3 eq 0 }">
									<div class="task-list-3">
										<span class="fc-normal-05-m fs-underline" onclick=""><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
							</div>
							<!-- <div class="task-list">
								<div class="task-list-1">
									<span>${freshmanTaskVO.task4Description }</span>
								</div>
								<div class="task-list-2">
									<c:if test="${playerFreshmanTaskVO.task4 eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
									<c:if test="${playerFreshmanTaskVO.task4 ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<span class="fc-normal-06-m">${empty
										playerFreshmanTaskVO.task4 ? 0 :
										(freshmanTaskVO.task4Count-playerFreshmanTaskVO.task4)}</span> <span>/${freshmanTaskVO.task4Count
										}</span>
								</div>
								<c:if test="${playerFreshmanTaskVO.task4 ne 0 }">
									<div class="task-list-3">
										<span class="fc-normal-06-m fs-underline"
											onclick="confirmUrl('${freshmanTaskVO.task4Type}')"><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
								<c:if test="${playerFreshmanTaskVO.task4 eq 0 }">
									<div class="task-list-3">
										<span class="fc-normal-05-m fs-underline" onclick=""><spring:message
												code='label.cg01010301.task.goto' /></span>
									</div>
								</c:if>
							</div>
							-->
						</div>
						<img alt=""
							src='<p:localurl value="/resources/images/hengtiao.png"/>'
							class="img-hengtiao" />
						<div class="task-footer">
							<c:if test="${playerFreshmanTaskVO.day eq 7 }">
								<span style="text-align: center;"><spring:message
										code='label.cg01010301.task.congratulations' /></span>
							</c:if>
							<c:if test="${playerFreshmanTaskVO.day ne 7 }">
								<span style="width: 60%;"><spring:message
										code='label.cg01010301.task.tomorrow' /></span>
								<c:if test="${nextFreshmanTaskVO.rewardType eq 'CRYSTAL' }">
									<img
										src='<p:localurl value="/resources/images/icons/shuijing.png"/>'
										class="img-reward-item" />
									<span>${nextFreshmanTaskVO.rewardCount }</span>
								</c:if>
								<c:if test="${nextFreshmanTaskVO.rewardType eq 'DIAMOND' }">
									<img
										src='<p:localurl value="/resources/images/icons/zuanshi.png"/>'
										class="img-reward-item" />
									<span>${nextFreshmanTaskVO.rewardCount }</span>
								</c:if>
								<c:if test="${nextFreshmanTaskVO.rewardType eq 'CARD' }">
									<img
										src='<p:localurl value="/resources/images/cards/tinysmall/TD2S.png"/>'
										class="img-reward-item" />
									<span>${nextFreshmanTaskVO.rewardCount }</span>
								</c:if>
								<c:if
									test="${nextFreshmanTaskVO.rewardType eq 'CONSUMABLE' && playerFreshmanTaskVO.day eq 2}">
									<img
										src='<p:localurl value="/resources/images/consumable/small/EB_P.png"/>'
										class="img-reward-item" />
									<span>${nextFreshmanTaskVO.rewardCount }</span>
								</c:if>
								<c:if
									test="${nextFreshmanTaskVO.rewardType eq 'CONSUMABLE' && playerFreshmanTaskVO.day eq 3}">
									<img
										src='<p:localurl value="/resources/images/consumable/small/TD1.png"/>'
										class="img-reward-item" />
									<span>${nextFreshmanTaskVO.rewardCount }</span>
								</c:if>
								<c:if test="${nextFreshmanTaskVO.rewardType eq 'VIP' }">
									<img
										src='<p:localurl value="/resources/images/viplevel/3.png"/>'
										class="img-reward-item" />
								</c:if>
							</c:if>
						</div>
					</div>
					<div class="panelA-footer"></div>
				</div>
			</c:if>
			<div class="task-body">
				<div class="panelA-header"></div>
				<div
					class="regular-task-height panelA-body panelA04-height daily-task-height">
					<div class="task-up">
						<div class="text1">
							<span><spring:message code='label.cg01010301.task.daily' /></span>
						</div>
						<div class="text2">
							<span><spring:message code='label.cg01010301.reward' />${playerRegularTaskVO.rewardCount
								}</span>
							<c:if test="${playerRegularTaskVO.rewardType eq 'DIAMOND' }">
								<span><spring:message
										code='label.cg01010301.reward.diamond' /></span>
							</c:if>
							<c:if test="${playerRegularTaskVO.rewardType eq 'CRYSTAL' }">
								<span><spring:message
										code='label.cg01010301.reward.crystal' /></span>
							</c:if>
						</div>
						<div class="text3">
							<c:if
								test="${empty playerRegularTaskVO.getReward or (not empty playerRegularTaskVO.getReward and playerRegularTaskVO.getReward)}">
								<a class="fc-normal-05-m fs-underline"><span><spring:message
											code='label.cg01010301.get' /></span></a>
							</c:if>
							<c:if
								test="${not empty playerRegularTaskVO.getReward and !playerRegularTaskVO.getReward }">
								<a class="fc-normal-06-m fs-underline"
									id="<p:fullurl value="/cg0101/cg010103/getRegularTaskReward"/>"
									onclick="getReward(this)"><span><spring:message
											code='label.cg01010301.get' /></span></a>
							</c:if>
						</div>
					</div>
					<div>
						<img
							src="<p:localurl value="/resources/images/line-split-down.png"/>"
							class="line-split-down" />
					</div>
					<div class="regular-task-body">
						<div class="task-list regular-task">
							<div class="task-list-1">
								<span><spring:message
										code='label.cg01010301.daily.recruit' /></span>
							</div>
							<div class="task-list-2">
								<c:if test="${regularTaskVO.recruit eq 0 }">
									<span>&nbsp; -&nbsp;-&nbsp;- &nbsp;&nbsp; </span>
								</c:if>
								<c:if test="${regularTaskVO.recruit ne 0 }">
									<c:if test="${playerRegularTaskVO.recruit ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<c:if test="${playerRegularTaskVO.recruit eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
								</c:if>
								<span class="fc-normal-06-m">${regularTaskVO.recruit -
									playerRegularTaskVO.recruit }</span> <span>/${regularTaskVO.recruit}</span>
							</div>
							<div class="task-list-3">
								<c:if
									test="${regularTaskVO.recruit ne 0 and playerRegularTaskVO.recruit > 0}">
									<span class="fc-normal-06-m fs-underline"
										onclick="location.href='<p:fullurl value="/cg0801/cg080102/tabchange/HERO"/>'"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
								<c:if
									test="${regularTaskVO.recruit eq 0 or playerRegularTaskVO.recruit eq 0}">
									<span class="fc-normal-05-m fs-underline"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
							</div>
						</div>
						<div class="task-list regular-task">
							<div class="task-list-1">
								<span><spring:message code='label.cg01010301.daily.task' /></span>
							</div>
							<div class="task-list-2">
								<c:if test="${regularTaskVO.journey eq 0 }">
									<span>&nbsp; -&nbsp;-&nbsp;- &nbsp;&nbsp; </span>
								</c:if>
								<c:if test="${regularTaskVO.journey ne 0 }">
									<c:if test="${playerRegularTaskVO.journey ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<c:if test="${playerRegularTaskVO.journey eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
								</c:if>
								<span class="fc-normal-06-m">${regularTaskVO.journey -
									playerRegularTaskVO.journey }</span> <span>/${regularTaskVO.journey}</span>
							</div>
							<div class="task-list-3">
								<c:if
									test="${regularTaskVO.journey ne 0 and playerRegularTaskVO.journey > 0}">
									<span class="fc-normal-06-m fs-underline"
										onclick="location.href='<p:fullurl value="/cg0201/cg020101/index"/>'"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
								<c:if
									test="${regularTaskVO.journey eq 0 or playerRegularTaskVO.journey eq 0}">
									<span class="fc-normal-05-m fs-underline"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
							</div>
						</div>
						<div class="task-list regular-task">
							<div class="task-list-1">
								<span><spring:message code='label.cg01010301.daily.pvp' /></span>
							</div>
							<div class="task-list-2">
								<c:if test="${regularTaskVO.pvp eq 0 }">
									<span>&nbsp; -&nbsp;-&nbsp;- &nbsp;&nbsp; </span>
								</c:if>
								<c:if test="${regularTaskVO.pvp ne 0 }">
									<c:if test="${playerRegularTaskVO.pvp ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<c:if test="${playerRegularTaskVO.pvp eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
								</c:if>
								<span class="fc-normal-06-m">${regularTaskVO.pvp -
									playerRegularTaskVO.pvp }</span> <span>/${regularTaskVO.pvp}</span>
							</div>
							<div class="task-list-3">
								<c:if
									test="${regularTaskVO.pvp ne 0 and playerRegularTaskVO.pvp > 0}">
									<span class="fc-normal-06-m fs-underline"
										onclick="location.href='<p:fullurl value="/cg0401/cg040104/index"/>'"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
								<c:if
									test="${regularTaskVO.pvp eq 0 or playerRegularTaskVO.pvp eq 0}">
									<span class="fc-normal-05-m fs-underline"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
							</div>
						</div>
						<div class="task-list regular-task">
							<div class="task-list-1">
								<span><spring:message
										code='label.cg01010301.daily.intensify' /></span>
							</div>
							<div class="task-list-2">
								<c:if test="${regularTaskVO.compose eq 0 }">
									<span>&nbsp; -&nbsp;-&nbsp;- &nbsp;&nbsp; </span>
								</c:if>
								<c:if test="${regularTaskVO.compose ne 0 }">
									<c:if test="${playerRegularTaskVO.compose ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<c:if test="${playerRegularTaskVO.compose eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
								</c:if>
								<span class="fc-normal-06-m">${regularTaskVO.compose -
									playerRegularTaskVO.compose }</span> <span>/${regularTaskVO.compose}</span>
							</div>
							<div class="task-list-3">
								<c:if
									test="${regularTaskVO.compose ne 0 and playerRegularTaskVO.compose > 0}">
									<span class="fc-normal-06-m fs-underline"
										onclick="location.href='<p:fullurl value="/cg0302/cg030201/index"/>'"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
								<c:if
									test="${regularTaskVO.compose eq 0 or playerRegularTaskVO.compose eq 0}">
									<span class="fc-normal-05-m fs-underline"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
							</div>
						</div>
						<div class="task-list regular-task">
							<div class="task-list-1">
								<span><spring:message
										code='label.cg01010301.daily.evolution' /></span>
							</div>
							<div class="task-list-2">
								<c:if test="${regularTaskVO.evolution eq 0 }">
									<span>&nbsp; -&nbsp;-&nbsp;- &nbsp;&nbsp; </span>
								</c:if>
								<c:if test="${regularTaskVO.evolution ne 0 }">
									<c:if test="${playerRegularTaskVO.evolution ne 0 }">
										<span><spring:message
												code='label.cg01010301.task.unfinish' /></span>
									</c:if>
									<c:if test="${playerRegularTaskVO.evolution eq 0 }">
										<span><spring:message
												code='label.cg01010301.task.finish' /></span>
									</c:if>
								</c:if>
								<span class="fc-normal-06-m">${regularTaskVO.evolution -
									playerRegularTaskVO.evolution }</span> <span>/${regularTaskVO.evolution}</span>
							</div>
							<div class="task-list-3">
								<c:if
									test="${regularTaskVO.evolution ne 0 and playerRegularTaskVO.evolution > 0}">
									<span class="fc-normal-06-m fs-underline"
										onclick="location.href='<p:fullurl value="/cg0302/cg030207/index"/>'"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
								<c:if
									test="${regularTaskVO.evolution eq 0 or playerRegularTaskVO.evolution eq 0}">
									<span class="fc-normal-05-m fs-underline"><spring:message
											code='label.cg01010301.task.goto' /></span>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				<div class="panelA-footer"></div>
			</div>
		</div>
		<div></div>
	</div>
</c:if>
<c:if test="${empty header['requestType']}">
	<div class="tab-activity hiddenForCG010103">
		<div class="activity-body">
		<c:if test="${beforeActivty }">
		<div class="label1" style="background: black;width: 95%;margin-left: 3%;">
		   <img class="clickTone1"
					src='<p:localurl value="/resources/images/activity/deathsealink.png"/>'
					onclick="window.location.href='<p:fullurl value="/cg2601/cg260101/index"/>'" style="opacity: 0.5;">
			<div style="margin-top: -45px;">
			<div style="float: left;text-align: left;color: rgb(255,200,0);margin-left: 9%"><spring:message code="label.cg010103.kaifang"/></div>
			<div style="float:left;text-align: left;color: rgb(255,200,0);margin-left: 20px;"><spring:message code="label.cg010103.shengyushijian"/></div>
			<div id="leftTime" style="float:left;text-align: left;margin-left: 20px;"></div>
			</div>
		</div>
		</c:if>
		<c:if test="${inActivity }">
		<div class="label1">
		   <img class="clickTone1"
					src='<p:localurl value="/resources/images/activity/deathsealink.png"/>'
					onclick="window.location.href='<p:fullurl value="/cg2601/cg260101/index"/>'">
			<div style="margin-top: -45px;">
			<div style="float:left;text-align: left;color: rgb(255,200,0);margin-left: 9%"><spring:message code="label.cg010103.shengyushijian"/></div>
			<div id="leftTime" style="float:left;text-align: left;margin-left: 20px;"></div>
		    </div>
		</div>
		</c:if>
		<c:if test="${afterActivity }">
		<div class="label1">
		   <img class="clickTone1"
					src='<p:localurl value="/resources/images/activity/deathsealink.png"/>'
					onclick="window.location.href='<p:fullurl value="/cg2601/cg260101/index"/>'">
			<div style="margin-top: -45px;">
			<div style="text-align: center;color: rgb(255,200,0);"><spring:message code="label.cg010103.huodongjieshu"/></div>
		    </div>
		</div>
		</c:if>
		<div class="label1" style="margin-top: 60px;">
				<img class="clickTone1"
					src='<p:localurl value="/resources/images/activity/xianshilianjie.PNG"/>'
					onclick="jumpToLimit()">
			</div>
			<c:if test="${hasReward eq 'true'}">
				<div style="position: relative; float: right; margin-top: -170px;">
					<img src='<p:localurl value="/resources/images/activity/N.PNG"/>'>
				</div>
			</c:if>
			<%-- 
			<c:if test="${day>=0&&day<=11 }">
				<div class="label1">
					<img class="clickTone1"
						src='<p:localurl value="/resources/images/activity/yuandanlianjie.png"/>'
						onclick="jumpToNewYearActivity()">
				</div>
				<c:if test="${hasNewYearReward eq 'true'}">
					<div style="position: relative; float: right; margin-top: -170px;">
						<img src='<p:localurl value="/resources/images/activity/N.PNG"/>'>
					</div>
				</c:if>
			</c:if>
			--%>
			<div style="margin-top: 35px" id="commonActivities">

				<div class="activity-img-left">
					<c:choose>
						<c:when test="${playerVO.level < 8}">
							<img
								src='<p:localurl value="/resources/images/activity/xingjizhengbaweikaifang.PNG"/>'>
						</c:when>
						<c:otherwise>
							<img class="clickTone1"
								src='<p:localurl value="/resources/images/activity/shouyehuodong01.PNG"/>'
								onclick="location.href='<p:fullurl value="/cg2201/cg220107/index"/>';event.preventDefault();">
							<c:if test="${gamePlayer.ranking<=10000 }">
								<div
									style="float: left; margin-top: -135px; color: rgb(0, 252, 255); margin-left: 240px; font-size: 22pt;">
									<span>${gamePlayer.ranking }</span>
								</div>
							</c:if>
							<c:if test="${gamePlayer.ranking>10000 }">
								<div
									style="float: left; margin-top: -135px; color: rgb(0, 252, 255); margin-left: 240px; font-size: 18pt;">
									<%--<span> <spring:message code="label.cg01010301.ranking" /></span> --%>
								</div>
							</c:if>
						</c:otherwise>
					</c:choose>
				</div>
				<div class="activity-img-right">
					<c:choose>
					<c:when test="${playerVO.level < 18}">
						<img
							src='<p:localurl value="/resources/images/activity/xingzhanfubenweikaifang.PNG"/>'>
					</c:when>
					<c:otherwise>
						<img class="clickTone1"
							src='<p:localurl value="/resources/images/activity/shouyehuodong03.PNG"/>'
							onclick="location.href='<p:fullurl value="/cg1801/cg180106/index"/>'">
					</c:otherwise>
					</c:choose>
					
				</div>

			</div>

			<div class="activity-img-left activity-img02">
				<c:choose>
						<c:when test="${playerVO.level < 13}">
							<img
								src='<p:localurl value="/resources/images/activity/shenmishangdianweikaifang.PNG"/>'>
						</c:when>
						<c:otherwise>
							<img class="clickTone1"
								src='<p:localurl value="/resources/images/activity/shouyehuodong02.PNG"/>'
								onclick="location.href='<p:fullurl value="/cg0901/cg090106/index"/>'">
						</c:otherwise>
					</c:choose>
				
				
			</div>
			<div>
				<div class="activity-img-right activity-img02">
					<img class="clickTone1"
						src='<p:localurl value="/resources/images/activity/shouyehuodong07.png"/>'
						onclick="location.href='<p:fullurl value="/cg0801/cg080102/tabchange/HERO"/>'">
				</div>

			</div>

			<div>
				<div class="activity-img-left activity-img02">
					<img class="clickTone1"
						src='<p:localurl value="/resources/images/activity/shouyehuodong05.PNG"/>'
						onclick="useCounsumableConfirm(this)">
				</div>
				<div class="activity-img-right activity-img02">
					<img class="clickTone1"
						src='<p:localurl value="/resources/images/activity/shouyehuodong04.PNG"/>'
						onclick="location.href='<p:fullurl value="/cg2201/cg220102/index"/>'">
				</div>
			</div>

			<div>

				<div class="activity-img-left activity-img02">
					<img class="clickTone1"
						src='<p:localurl value="/resources/images/activity/shouyehuodong06.PNG"/>'
						onclick="location.href='<p:fullurl value="/cg2201/cg220101/index"/>'">
					
				</div>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
</c:if>

<!-- 当请求类型为ajax且来自rewardTab时，更新此段 -->
<c:if
	test="${empty header['requestType'] or (header['requestType'] == 'ajax' and header['requestFrom'] == 'rewardTab') }">
	<div class="tab-reward hiddenForCG010103">
		<div class="task-body" id="getAllRewards">
			<c:if test="${not empty milestoneList ||not empty giftList}">
				<div class="align-center clickTone1 msg-count"
					onclick="getAllRewards(this);">
					<img
						src="<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png" />">
				</div>
				<c:forEach items="${milestoneList}" var="item" varStatus="i">
					<div class="panel-01 MileStoneItem">
						<form id="subForm${i.index}" method="POST"
							action="<p:fullurl value="/cg0101/cg010103/getReward"/>">
							<input type="hidden" name="id" value="${item.id}" /> <input
								type="hidden" name="milestoneId" value="${item.milestoneId}" />
							<input type="hidden" name="name" value="${item.name}" /> <input
								type="hidden" name="description" value="${item.description}" />
							<input type="hidden" name="milestoneType"
								value="${item.milestoneType}" /> <input type="hidden"
								name="milestoneSubType" value="${item.milestoneSubType}" /> <input
								type="hidden" name="orderNumber" value="${item.orderNumber}" />
							<input type="hidden" name="rewardDesc" value="${item.rewardDesc}" />
							<div class="borderPanel">
								<div class="panelB-header"></div>
								<div class="panelB-body panelB03-height"></div>
								<div class="panelB-footer"></div>
								<div class="border-content-noleft">
									<div class="propsListStyle">
										<div>
											<div class="rewardtitle"
												style="width: 100%; text-align: center;">
												<span> &nbsp;${item.name}&nbsp;</span>
											</div>
											<div class="split-item-down"></div>
											<c:if test="${item.isGrant != null}">
												<div class="fc-title-parent-01 fc-title-parent-04">
													<span class="fc-title-02"><spring:message
															code="lable.cg1601.reward.process"></spring:message>:</span> <span
														class="fc-normal-03-m">${empty item.actualValue ? 0
														: item.actualValue}/${item.requireValue}</span>
												</div>
											</c:if>
											<div class="fc-title-parent-02 fc-title-parent-03">
												<span class="fc-title-02"><spring:message
														code="lable.cg1601.reward.Desc.message"></spring:message>:</span>
												<span class="fc-normal-03-m"> ${item.description}</span>
											</div>
											<div class="clearfix"></div>
											<div class="fc-container-01">
												<span class="fc-title-02 fc-title-02-add"><spring:message
														code="lable.cg1601.reward.message"></spring:message>:</span>
												<c:forEach items="${item.milestoneRewardVos }" var="reward">
													<span style="float: left;"> <c:if
															test="${reward.rewardType.name() eq 'CONSUMABLE' }">
															<img
																src='<p:consumImg type="middle" id="${reward.rewardId}" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'EQUIPMENT' }">
															<img
																src='<p:equipImg type="middle" id="${reward.rewardEquipmentColor}" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'CARD' }">
															<img class="tiny-reward-card-style"
																src='<p:cardImg type="tinysmall" id="${reward.rewardId}" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'TICKET' }">
															<img
																src='<p:localurl value="/resources/images/other/middle/K1.png" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'FPOINT' }">
															<img
																src='<p:localurl value="/resources/images/other/middle/FPOINT.png" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'CPOINT' }">
															<img
																src='<p:localurl value="/resources/images/other/middle/CPOINT.png" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'SCOIN' }">
															<img
																src='<p:localurl value="/resources/images/other/middle/SCOIN.png" />' />
														</c:if> <c:if test="${reward.rewardType.name() eq 'GCOIN' }">
															<img
																src='<p:localurl value="/resources/images/other/middle/GCOIN.png" />' />
														</c:if>
													</span>
													<span class="rewardCount">${reward.rewardCount}</span>
												</c:forEach>
												<div class="clearfix"></div>
											</div>
											<div class="reward-button-style">
												<c:if test="${item.isGrant}">
													<img class="clickTone1"
														onclick="doCG16Submit('subForm${i.index}','<p:fullurl value="/cg0101/cg010103/getReward" />','<spring:message code="label.cg1601.reward.success1"></spring:message><br/><spring:message code="label.cg1601.reward.success2"></spring:message>','<spring:message code="label.cg1601.reward.failed1"></spring:message><spring:message code="label.cg1601.reward.failed2"></spring:message>',this);countGift();"
														src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>' />
												</c:if>
												<c:if test="${item.isGrant eq false}">
													<img class="gray button_gray"
														src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>' />
												</c:if>
												<c:if test="${empty item.isGrant}">
													<img class=""
														src='<p:localurl value="/resources/images/buttons/wancheng.png"/>' />
												</c:if>
											</div>
											<div class="clearfix"></div>
										</div>
									</div>

								</div>
							</div>

						</form>
					</div>
				</c:forEach>

				<c:forEach items="${allGiftList}" var="item">
					<c:if test="${item.giftFrom ne 'DAILYREWARD'}">
						<div class="panel-01 giftItem">
							<div class="borderPanel">
								<div class="panelB-header"></div>
								<div class="panelB-body panelB01-height"></div>
								<div class="panelB-footer"></div>
								<div class="border-content-noleft">
									<div class="borderStyleB007">
										<div class="B007ImageDiv">
											<div class="propsImagesDiv">
												<div class="propsImageStyle">
													<c:if test="${item.type.name() eq 'CONSUMABLE' }">
														<img
															src='<p:consumImg type="large" id="${item.staticItemId}" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'EQUIPMENT' }">
														<img
															src='<p:equipImg type="large" id="${item.staticItemId}" />' />
													</c:if>

													<c:if test="${item.type.name() eq 'CARD' }">
														<c:choose>
															<c:when test="${fn:startsWith(item.staticItemId, 'TD2')}">
																<img
																	src='<p:consumImg type="large" id="${item.staticItemId}" />' />
															</c:when>
															<c:otherwise>
																<img
																	src='<p:cardImg type="small" id="${item.staticItemId}" />' />
															</c:otherwise>
														</c:choose>
													</c:if>


													<c:if test="${item.type.name() eq 'CARD_TICKET' }">
														<img
															src='<p:localurl value="/resources/images/other/large/K1.png" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'FPOINT' }">

														<img
															src='<p:localurl value="/resources/images/other/large/FPOINT.png" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'CPOINT' }">
														<img
															src='<p:localurl value="/resources/images/other/large/CPOINT.png" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'CRYSTAL' }">
														<img
															src='<p:localurl value="/resources/images/other/large/SCOIN.png" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'DIAMOND' }">
														<img
															src='<p:localurl value="/resources/images/other/large/GCOIN.png" />' />
													</c:if>
													<c:if test="${item.type.name() eq 'RAID_KEY' }">
														<img
															src='<p:localurl value="/resources/images/consumable/large/D9.png" />' />
													</c:if>
												</div>
											</div>
											<div class="messageinfoB0070104">
												<div class="B007Height">
													<c:if test="${not empty item.giftFrom}">
														<c:choose>
															<c:when
																test="${item.type.name() eq 'EQUIPMENT' && item.giftFrom.name() eq 'ROB' && item.description ne null && item.description.trim() ne ''}">
																<spring:message
																	code="label.cg010103.lueduoledezhuangbei"
																	arguments="${item.description }"></spring:message>
															</c:when>
															<c:otherwise>
																<div>
																	<span class="fc-title-02"><spring:message
																			code="label.cg1101.cg110104.giftName"></spring:message>:</span><span
																		class="fc-content-03">${item.name}x${item.itemCount}</span>
																</div>
																<!--  -->
																<div>
																	<span class="fc-title-02"><spring:message
																			code="label.cg1101.cg110104.giftFrom"></spring:message>:</span><span
																		class="fc-content-03" style="margin-left: 0px;">
																		<c:if test="${item.giftFrom.name() eq 'SYSTEM'}">
																			<spring:message
																				code="label.cg1101.cg110104.xitongfafang"></spring:message>
																		</c:if> <c:if
																			test="${item.giftFrom.name() eq 'REMOVEFROMSHELVES'}">
																			<spring:message
																				code="label.cg1101.cg110104.shangpinxiajia"></spring:message>
																		</c:if> <!--  <c:if test="${item.giftFrom.name() eq 'ROB'}">
																		<spring:message code="label.cg1101.cg110104.zhandouqiangduo"></spring:message>
																		</c:if>--> <c:if
																			test="${item.giftFrom.name() eq 'EQUIPMENTEXPLODE'}">
																			<spring:message
																				code="label.cg1101.cg110104.zhuangbeifenjie"></spring:message>
																		</c:if> <c:if test="${item.giftFrom.name() eq 'MILESTONE'}">
																			<spring:message
																				code="label.cg1101.cg110104.milestone"></spring:message>
																		</c:if> <c:if test="${item.giftFrom.name() eq 'RAIDREWARD'}">
																			<spring:message
																				code="label.cg1101.cg110104.raidreward"></spring:message>
																		</c:if> <c:if test="${item.giftFrom.name() eq 'OTHER'}">
																			<spring:message code="label.cg1101.cg110104.qita"></spring:message>
																		</c:if>
																	</span>
																</div>

																<c:if
																	test="${item.description ne null && item.description.trim() ne ''}">
																	<div>
																		<c:if test="${item.type.name() ne 'CARD'}">
																			<span class="fc-title-02"><spring:message
																					code="label.cg1101.cg110104.gongneng"></spring:message>:</span>
																			<span class="fc-content-03">${item.description.length()
																				> 15 ?
																				item.description.substring(0,15).concat('...'):item.description}</span>
																		</c:if>
																	</div>
																</c:if>
															</c:otherwise>
														</c:choose>
													</c:if>
												</div>
												<div style="clear: both;"></div>
											</div>
											<div class="clickTone1 get-msg-count" id="${item.id}"
												type="${item.type}"
												onclick="getGiftReward(this);countGift();">
												<img
													src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>'>
											</div>
											<div style="clear: both;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>


				<!-- 每日登陆奖励领取-->
				<c:if test="${not empty dailyGiftList}">

					<div class="panel-01  dailygiftItem">
						<div class="borderPanel">
							<div class="panelB-header">
								<div class="reward-title-style reward-title-cg01010301">
									<span><spring:message code="label.CG020111.dailyreward"></spring:message></span>
								</div>
							</div>
							<div class="panelB-body panelB01-height">
								<div class="fc-container-02 fc-container-cg01010301">
									<c:forEach items="${dailyGiftList}" var="item" varStatus="k">
										<div style="float: left;">
											<div style="overflow: hidden;">
												<span style="float: left;"> <c:if
														test="${item.type.name() eq 'CONSUMABLE' }">
														<img
															src='<p:consumImg type="middle" id="${item.staticItemId}" />' />
													</c:if> <%-- <c:if test="${item.type.name() eq 'EQUIPMENT' }">
															<img src='<p:equipImg type="middle" id="${item.staticItemId}" />' />
														</c:if> --%> <c:if test="${item.type.name() eq 'CARD' }">
														<c:choose>
															<c:when test="${fn:startsWith(item.staticItemId, 'TD2')}">
																<img
																	src='<p:consumImg type="middle" id="${item.staticItemId}" />' />
															</c:when>
															<c:otherwise>
																<img
																	src='<p:cardImg type="tinysmall" id="${item.staticItemId}" />' />
															</c:otherwise>
														</c:choose>
													</c:if> <c:if test="${item.type.name() eq 'CARD_TICKET' }">
														<img
															src='<p:otherImg type="middle" id="${item.staticItemId}" />' />
													</c:if> <c:if test="${item.type.name() eq 'FPOINT' }">
														<img
															src='<p:localurl value="/resources/images/other/middle/FPOINT.png" />' />
													</c:if> <c:if test="${item.type.name() eq 'CPOINT' }">
														<img
															src='<p:localurl value="/resources/images/other/middle/CPOINT.png" />' />
													</c:if> <c:if test="${item.type.name() eq 'CRYSTAL' }">
														<img
															src='<p:localurl value="/resources/images/other/middle/SCOIN.png" />' />
													</c:if> <c:if test="${item.type.name() eq 'DIAMOND' }">
														<img
															src='<p:localurl value="/resources/images/other/middle/GCOIN.png" />' />
													</c:if> <c:if test="${item.type.name() eq 'RAID_KEY' }">
														<img
															src='<p:localurl value="/resources/images/consumable/middle/D9.png" />' />
													</c:if>
												</span> <span class="rewardCount"><span
													class="fc-normal-06-l">×${item.itemCount}</span></span>
											</div>
											<div class="reward-res">
												<span>${item.name}</span>
											</div>
										</div>

									</c:forEach>
								</div>
								<div class="dailyGiftButton clickTone1 " id="${item.id}"
									onclick="getdailyGiftReward(this);countGift();">
									<img
										src='<p:localurl value="/resources/images/buttons/lingqu-green.png"/>'>
								</div>
							</div>
							<div class="panelB-footer"></div>
						</div>
					</div>

				</c:if>

				<div class="align-center clickTone1 msg-count"
					onclick="getAllRewards(this);">
					<img
						src="<p:localurl value="/resources/images/buttons/quanbulingqu-green-z.png" />">
				</div>
			</c:if>
		</div>
	</div>
</c:if>

<!-- 当请求中不含requestType时，更新此段 -->
<c:if test="${empty header['requestType']}">
	<div class="clearfix"></div>
	<div class="tab-chat hiddenForCG010103">
		<div>
			<div class="chatRoom" id="chatRoom"></div>
			<div class="chat-img">
				<img class="btn-world clickTone1"
					src="<p:localurl value='/resources/images/buttons/shijietiaotian.png'/>" />
				<img class="btn-union clickTone1"
					src="<p:localurl value='/resources/images/buttons/lianmengliaotian.png'/>" />
			</div>
			<div class="label2 label-chat-style">
				<img id="boardcast"
					src="<p:localurl value='/resources/images/uncheck.png'/>"
					onclick="doToggle.call(this)" /> <span
					class="fc-content-03 clickTone1"><spring:message
						code="label.cg01010301.use.broadcast" />&nbsp;&nbsp;</span> <span
					id="warning" class="fc-normal-06-m fs-underline clickTone1"><spring:message
						code="label.cg01010301.broadcast.less" /> <spring:message
						code="label.cg01010301.broadcast.buy" /></span>
			</div>

			<form method="POST" id="Message"
				enctype="application/x-www-form-urlencoded" accept-charset="UTF-8">
				<input type="text" class="message" name="message" rows="2"
					maxLength="140" onkeypress="" autocomplete="off"></input> <input
					type="hidden" name="isLoudspeakerEnough" value="false" /> <input
					type="hidden" name="useLoudspeaker" value="false" /> <input
					type="hidden" name="time" value="" />
			</form>
			<div class="send-message-button">
				<img
					onclick='sendMessageClick()' src="<p:localurl value='/resources/images/buttons/fasong-green.png'/>" />
			</div>
		</div>
	</div>
	<div class="split-01"></div>
	<div>
		<div class="code" style="display: none;">
			<div class="menu-medium title-label-02 ">
				<span><spring:message code="label.cg01010301.code.reward" /></span>
			</div>

			<div class="story-list">
				<div class="borderPanel" style="text-align: center;">
					<div class="panelC-header"></div>
					<div class="panelC-body panelC02-height"></div>
					<div class="panelC-footer"></div>
					<div class="border-content-noleft">
						<div>
							<span class="fc-content-01 convert-info convert-info02"><spring:message
									code="label.cg01010301.code.input" /></span>
						</div>
						<div class="convert-style">
							<form action="<p:fullurl value="/cg1901/cg190103/action"/>"
								name="codeForm">
								<input type="text" id="code"
									value="<spring:message code='label.cg01010301.code.tishi' />"
									class="text-code"
									onblur="if(this.value==''){this.value='<spring:message code='label.cg01010301.code.tishi' />';this.className='text-code'}"
									onfocus="if(this.value==this.defaultValue){this.value='';this.className='text-style02'}">
								<input type="text" name="notautosubmit" style="display: none" />
							</form>
							<div style="text-align: center;">
								<img class="clickTone1"
									src="<p:localurl value="/resources/images/buttons/duihuan-green.png"/>"
									onclick="myClick()" />
							</div>
							<span onclick="copyAccount()"
								class="fc-content-02 fs-underline copyPublicAccount"><spring:message
									code='label.cg01010301.copy.publicAccount' /></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>

<div id="code-cardsmax-message" style="display: none;">
	<spring:message code='label.cg0801.cardcountsupten' />
	</br>

	<spring:message code='label.cg0801.cardsurplus' />
	<img class='imgIntensifyEvo' onclick='jumpToItensify()'
		src='<p:localurl value="/resources/images/hechengnew.png" />' /> <span><spring:message
			code='label.CG020000.or'></spring:message></span> <img
		class='imgIntensifyEvo' onclick='jumpToEvo()'
		src='<p:localurl value="/resources/images/zhuanshengnew.png" />' />
</div>





<c:if test="${empty header['requestType']}">
	<script type="text/javascript">
 var     InterValObj = window.setInterval(updatePlayerInfo, 4000);
 var     InterValObjdele = "";
		/**页面加载后自执行部分JS**/	       
         var lenmsgList="${msgList.size()}";
         var aa=lenmsgList;
		 if(lenmsgList>0){	
			    deleteNewRecord();			
				InterValObjdele = window.setInterval(deleteNewRecord, 4000);				
		}		
		function deleteNewRecord(){
				var ss=aa-1;				
				if(ss>=0){
					for(var i=0;i<lenmsgList;i++){										
										var s1="marquee_"+i;										
										var objid=document.getElementById(s1);																				
										if(ss==i)
											{objid.style.display="block";}
										else
											{objid.style.display="none";}
						      }
					}
					else {
							 for(var i=0;i<lenmsgList;i++){											
									 var s2="marquee_"+i;
									 var box1=document.getElementById(s2);
										if(i==(lenmsgList-1)){ box1.style.display="block";}														
										else {box1.style.display="none";}
						      }
					}
					if(ss>=0) {aa=ss;}
					else {aa=lenmsgList-1;}										
		}

</script>

</c:if>
