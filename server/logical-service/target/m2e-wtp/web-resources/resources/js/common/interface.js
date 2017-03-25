var JSInterface = {
	// 调用本地方法设置未读消息数量
	setMsgCount: function(count) {},
	
	// 调用本地方法更新app端玩家信息
	updatePlayerInfo: function(infoObj) {},
	
	// send滚动信息
	sendNews: function(data) {},
	
	// 调用本地方法停止loading
	stopLoading: function() {},

	// 传递按键音类型
	clickTone: function(type) {},
	
	// 调用本地方法打开浏览器
	openBrowser: function(url) {},
	
	// 启动微信，关注指定账号
	startWeixin: function() {},
	
	//开始新手福利任务
	startFreshmanTask: function(data){},
	
	//完成新手福利任务所需要时间
	finishFreshmanTask: function(data){},
	
	//开始新手教程
	startNewCourse:function(data){},
	
	//完成新手教程耗时
	finishNewCourseCostTime:function(data){},
	
	//开始PVE征程小节名称
	startPlayerTaskSection:function(data){},
	
	//结束PVE征程小节名称
	finishPlayerTaskSection:function(data){},
	
	//开始PVP
	startPvpBattle:function(data){},
	
	//结束PVP
	finishPvpBattle:function(data){},
	
	//从系统获得钻石
	getDiamondFromSystem:function(data){},
	
	//从商店购买
	buyGoodsFromShop:function(data){},
	
	//在PVE和装备副本中使用道具
	useConsumble:function(data){},
	
	//是否加载连续登陆奖励页面
	accessContinue:function(data){},
	
	//是否复制公众微信账号
	copyAccount:function(data){},
	
	//星际之门-挑战BOSS开始
	startChallengeBoss:function(data){},
	
	//星际之门-挑战BOSS结束
	finishChallengeBoss:function(data){},
	//下载资源包
	downloadResources:function(data){},
	
	//新手教程上下部分隐藏与显示      YES表示显示，NO表示隐藏
	showUpandDown:function(data){}
	
	
}

//TransferInfoMation Holder For WebViewJavascriptBridge,Please Use This Constructor To Create The Transfer Object
var WebViewJavascriptBridgeTransInfo = function (source) {
	if(source && typeof source === "object")
		for(var k in arguments.callee.prototype)
			this[k] = source[k];
	this.constructor = arguments.callee;
};
WebViewJavascriptBridgeTransInfo.prototype = {
	actionEnergy : 0,
	fightingEnergy : 0,
	shieldEnergy : 0,
	actionEnergyMax : 0,
	fightingEnergyMax : 0,
	shieldEnergyMax : 0,
	propertiesResume : 0,
	level : 0,
	expPercent : 0,
	vipLevel : 0,
	crystalNum : 0,
	diamondsNum : 0,
	worldNews : "",
	unreadmessage : 0,
	playerModulReminds : ""
};

//Load in webview of iOS
document.addEventListener('WebViewJavascriptBridgeReady', function(event) {
	var bridge = event.bridge;
	
	bridge.init(function(message, responseCallback) {   
        if (responseCallback) {
            responseCallback("Right back atcha")
        }
    })
    
    // 显示/隐藏系统菜单
    if (isShowMenu == 'true') {
    	bridge.send("Start game");
    } else if (isShowMenu == 'false') {
    	bridge.send("Hide menu");
    }
	
	// 禁用/启用返回按钮
	if (canBack == 'false') {
		bridge.send("Disable Back");
	} else {
		bridge.send("Enable Back");
	}
	
	JSInterface.setMsgCount = function(count) {
		if (isNaN(count)) count = 0;
		bridge.send("unreadmessage:"+count);
	}
	
	JSInterface.updatePlayerInfo = function(infoObj) {
		if (!(infoObj instanceof WebViewJavascriptBridgeTransInfo))
			return false;
		for(var k in infoObj.constructor.prototype) {
			if(k != "worldNews" && k!="playerModulReminds")
				isNaN(infoObj[k]) && (infoObj[k] = 0);
			bridge.send(""+k+":"+infoObj[k]);
		}
	}
	
	JSInterface.sendNews = function(data) {
		bridge.send("worldNews:"+data);
	}
	
	JSInterface.stopLoading = function() {
		bridge.send("Stop Loading");
	}

	JSInterface.clickTone = function(type) {
		bridge.send("MusicWithType:" + type);
	}
	
	JSInterface.openBrowser = function(url) {
		bridge.send("BaiduUrl:" + url);
	}
	
	JSInterface.startWeixin = function() {
		bridge.send("StartWeixin");
	}
	
	JSInterface.startFreshmanTask = function(data){
		bridge.send("newPlayerWelfareTaskTimes:"+data);
		
	}
	
	JSInterface.finishFreshmanTask = function(data){
		bridge.send("newPlayerWelfareTaskCostTime:"+data);
		
	}
	
	JSInterface.startNewCourse = function(data){
		bridge.send("newPlayerGuideTimes:"+data);		
	}
	
	JSInterface.finishNewCourseCostTime = function(data){
		bridge.send("newPlayerGuideCostTime:"+data);		
	}
	
	JSInterface.startPlayerTaskSection = function(data){
		bridge.send("pveTaskSectionStart:"+data);		
	}
	
	JSInterface.finishPlayerTaskSection = function(data){
		bridge.send("pveTaskSectionEnd:"+data);		
	}
	
	JSInterface.startPvpBattle = function(data){
		bridge.send("pvpStart:"+data);		
	}
	
	JSInterface.finishPvpBattle = function(data){
		bridge.send("pvpEnd:"+data);
	}
	
	JSInterface.getDiamondFromSystem = function(data){
		bridge.send("virtualDiamondSystem:"+data);		
	}
	
	JSInterface.buyGoodsFromShop = function(data){
		bridge.send("consumablePurchase:"+data);		
	}
	
	JSInterface.useConsumble = function(data){
		bridge.send("consumableOnUse:"+data);		
	}
	
	JSInterface.accessContinue = function(data){
		bridge.send("AccessToContinue:"+data);		
	}
	
	JSInterface.copyAccount = function(data){
		bridge.send("copyPublicAccount:"+data);		
	}
	
	JSInterface.startChallengeBoss = function(data){
		bridge.send("startChallengeBoss:"+data);		
	}
	
	JSInterface.finishChallengeBoss = function(data){
		bridge.send("finishChallengeBoss:"+data);		
	}
	
	JSInterface.downloadResources = function(data){
		bridge.send("downloadResources:"+data);		
	}
	
	JSInterface.showUpandDown = function(data){
		bridge.send("showUpandDown:"+data);		
	}
	
	
}, false);

//Load in webview of android
if (typeof Android !== "undefined") {
	// 显示/隐藏系统菜单
	if (isShowMenu == 'true') {
		if (Android.startPlayGame != null) Android.startPlayGame();
	} else if (isShowMenu == 'false') {
		if (Android.hideMenu != null) Android.hideMenu();
	}
	
	// 禁用/启用返回按钮
	if (Android.toggleBack != null) {
		if (canBack == 'false') {
			Android.toggleBack(false);
		} else {
			Android.toggleBack(true);
		}
	}
	
	if (Android.setMessageCount != null) {
		JSInterface.setMsgCount = function(count) {
			Android.setMessageCount(count);
		}
	}
	
	if (Android.openBrowser != null) {
		JSInterface.openBrowser = function(url) {
			Android.openBrowser(url);
		}
	}
	
	if (Android.startWeixin != null) {
		JSInterface.startWeixin = function() {
			Android.startWeixin();
		}
	}
}