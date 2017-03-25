var playCss3AnimationFlag = true;
var backUrl = 'false';
function css3AnimationFactory() {
	//新手教程首页动画
	this.cg200101Animation = function(selector){
		$(".cg200101-content").css("display", "none");
		var queenPic = $(selector + ' .ani-xieci-pic');
		var desPic01 = $(selector + ' .ani-des-pic01');
		var desPic02 = $(selector + ' .ani-des-pic02');
		var desPic03 = $(selector + ' .ani-des-pic03');
		var desPic04 = $(selector + ' .ani-des-pic04');
		var desPic05 = $(selector + ' .ani-des-pic05');
		var smoke = $(selector + ' .ani-smoke');
		
		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth * window.screen.availHeight;
		
		var pic01 = maxWidth * 0.491;		
		var picMiddle01 = (maxWidth - pic01) / 2;
		
		var pic02 = maxWidth * 0.89;		
		var picMiddle02 = (maxWidth - pic02) / 2;
		
		var pic03 = maxWidth * 0.51;		
		var picMiddle03 = (maxWidth - pic03) / 2;
		
		var pic04 = maxWidth * 0.295;		
		var picMiddle04 = (maxWidth - pic04) / 2;
		
		var pic05 = maxWidth * 0.35;		
		var picMiddle05 = (maxWidth - pic05) / 2;
		
		
		
		
		var topHeight = window.screen.availHeight*0.8;
		// 设置展示最大高度
		$(selector).css("height", maxHeight + "px");
		
		function init(){
			$(selector).css("height", window.screen.availHeight+"px");
			queenPic.css('display', 'none');
			smoke.css('display', 'none');
			desPic01.css('display', 'none');
			desPic02.css('display', 'none');
			desPic03.css('display', 'none');
			desPic04.css('display', 'none');
			desPic05.css('display', 'none');
		}
		
		setTimeout(step1, 500);
		
		function step1(){			
			desPic01.css('display', 'block');
			desPic01.css('top', topHeight+"px");
			desPic01.css('left', picMiddle01+"px");
			desPic02.css('display', 'none');
			desPic03.css('display', 'none');
			desPic04.css('display', 'none');
			desPic05.css('display', 'none');
			queenPic.css('display', 'none');
			smoke.css('display', 'none');
			desPic01.addClass("ani-des");
			setTimeout(step2, 5000);
			
		}
		function step2(){
			desPic01.css('display', 'none');			
			desPic03.css('display', 'none');
			desPic04.css('display', 'none');
			desPic05.css('display', 'none');
			queenPic.css('display', 'none');
			smoke.css('display', 'none');
			desPic02.css('display', 'block');
			desPic02.css('top', topHeight+"px");
			desPic02.css('left', picMiddle02+"px");
			desPic02.addClass("ani-des");
			setTimeout(step3, 5000);
		}
		function step3(){
			desPic01.css('display', 'none');
			desPic02.css('display', 'none');
			desPic04.css('display', 'none');
			desPic05.css('display', 'none');
			smoke.css('display', 'block');
			queenPic.css('display', 'block');
			desPic03.css('display', 'block');
			desPic03.css('top', topHeight+"px");
			desPic03.css('left', picMiddle03+"px");
			queenPic.addClass("ani-queen-pic")
			desPic03.addClass("ani-des");
			smoke.addClass("ani-smoke-pic");
			setTimeout(step4, 5000);
		}
		function step4(){
			desPic01.css('display', 'none');
			desPic02.css('display', 'none');
			desPic05.css('display', 'none');
			desPic03.css('display', 'none');
			desPic04.css('display', 'block');
			desPic04.css('top', topHeight+"px");
			desPic04.css('left', picMiddle04+"px");
			smoke.css('display', 'block');
			queenPic.css('display', 'block');
			desPic04.addClass("ani-des");
			setTimeout(step5, 5000);
		}
		function step5(){
			desPic01.css('display', 'none');
			desPic02.css('display', 'none');
			desPic03.css('display', 'none');
			desPic04.css('display', 'none');
			desPic05.css('display', 'block');
			smoke.css('display', 'block');
			queenPic.css('display', 'block');
			desPic05.css('top', topHeight+"px");
			desPic05.css('left', picMiddle05+"px");
			desPic05.addClass("ani-des");
			setTimeout(step6, 5000);
		}
		function step6(){
			$(selector).css("display", "none");
			$(".cg200101-content").css("display", "block");
		}
		
		
	}
	
	
	// 卡牌强化
	this.cardIntensifyAnimation = function(selector) {

		var mainCard = $(selector + ' .main');
		var upImgs = $(selector + " .upPart .mat");
		var downImgs = $(selector + " .downPart .mat");
		var LightRay = $('.LightRay');

		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth
				* window.screen.availHeight;
		// 主卡高度
		var topHeight = maxHeight * 0.22;
		// 主卡宽度
		var mainWidth = maxWidth * 0.4;
		// downPart 或者 upPart 的高度
		var partHeight = maxHeight * 0.32;
		// 素材卡的宽度
		var imgWidth = maxWidth * 0.185;
		// 素材卡之间的间距
		var widthInteval = imgWidth + (maxWidth - 5 * imgWidth) / 6;
		// 中间位置
		var widthMiddle = (maxWidth - imgWidth) / 2;
		// 设置展示最大高度
		$(selector).css("height", maxHeight + "px");

		// 展示部分画面初始化
		function init() {
			// ma_li 合成背景音乐
			JSInterface.clickTone(111);

			mainCard.css("height", topHeight + "px");
			mainCard.css("height", mainWidth + "px");
			upImgs.css("width", imgWidth + "px");
			upImgs.css("height", partHeight + "px");
			downImgs.css("width", imgWidth + "px");
			downImgs.css("height", partHeight + "px");
			$(selector + " .topPart").css("height", topHeight + "px");
			$(selector + " .upPart").css("height", partHeight + "px");
			$(selector + " .downPart").css("height", partHeight + "px");
			$(".animationHolder .contentMask").css("opacity", "0");
			setTimeout(step1, 500);
		}
		// 主卡出现
		function step1() {
			mainCard.css('opacity', '1');
			mainCard.css('top', '0px');
			setTimeout(step2, 300);
		}
		// 上半部分素材卡滑动出现
		function step2() {
			var count = upImgs.size() - 1;
			var Interval = setInterval(function() {
				if (count < 0) {
					clearInterval(Interval);
					setTimeout(step3, 200);
					return;
				}
				var target = $(upImgs.get(count));
				target.css("opacity", 1);
				target.css("top", 0 + "px");
				target.css("left", widthInteval * (count--) + "px");
			}, 200)
		}
		// 下半部分素材卡滑动出现
		function step3() {
			var count = 0;
			var downImgsSize = downImgs.size();
			var Interval = setInterval(function() {
				if (count == downImgsSize) {
					clearInterval(Interval);
					setTimeout(step4, 200);
					return;
				}
				var target = $(downImgs.get(count));
				target.css("opacity", 1);
				target.css("top", 0 + "px");
				target.css("left", widthInteval * (count++) + "px");
			}, 200);
		}
		// 卡牌内容变换以及位置变换
		function step4() {
			var src = $(selector + ' .hidden').attr('src');
			return (function() {
				// 上半部分资源卡牌
				if (upImgs.size() > 0)
					upImgs.css3Animate({
						opacity : 0,
						time : '300ms',
						callback : function() {
							upImgs.attr("src", src);
							upImgs.css3Animate({
								opacity : 1,
								time : '300ms',
								callback : function() {
									upImgs.css('top', '-' + partHeight + 'px');
									upImgs.css('left', widthMiddle + 'px');
								}
							})
						}
					});
				// 下班部分资源卡牌
				if (downImgs.size() > 0)
					downImgs.css3Animate({
						opacity : 0,
						time : '300ms',
						callback : function() {
							downImgs.attr("src", src);
							downImgs.css3Animate({
								opacity : 1,
								time : '300ms',
								callback : function() {
									downImgs.css('top', '-'
											+ (partHeight * 2 + 20) + 'px');
									downImgs.css('left', widthMiddle + 'px');
								}
							})
						}
					});
				setTimeout(step5, 1500);
			}());
		}
		// 主卡以及素材卡变为透明
		function step5() {
			$(selector + ' .mat').css('opacity', '0');
			$(selector + ' .main').css('opacity', '0');
			setTimeout(step6, 300);
		}
		// 添加光晕转动效果
		function step6() {
			LightRay.addClass("contentLightRay");
			setTimeout(step7, 900);
		}
		// 隐藏动画部分，显示原来内容页
		function step7() {
			$('.animationHolder').css("display", "none");
			$('.finalRes').css("display", "block");
			// ma_li 停止合成背景音乐
			JSInterface.clickTone(211);
		}
		// 开始动画调用
		return setTimeout(init, 500);
	};
	// 进化动画
	this.cardEvolutionAnimation = function(selector) {
		var mainCard = $(selector + " .main");
		var matCard = $(selector + " .mat");
		var lightRay = $(selector + " .LightRay");

		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth
				* window.screen.availHeight;
		var imgWidth = maxWidth * 0.32;
		var imgHeight = maxHeight * 0.24;
		var middleWidth = (maxWidth - imgWidth) / 2;
		var middleHeight = (maxHeight - imgHeight) / 2;
		$(selector).css("height", maxHeight + "px");

		function init() {
			// ma_li 转生背景音乐
			JSInterface.clickTone(129);

			lightRay.find("div").css("top",
					(middleHeight - imgHeight / 2) + "px");
			$(selector + " .contentMask").css("opacity", "0");
			setTimeout(step1, 500);
		}
		function step1() {
			// 音效 ma_li 126 2013_11_7 转生1
			JSInterface.clickTone(126);

			mainCard.css("left", middleWidth + "px");
			mainCard.css("opacity", "1");
			matCard.css("right", middleWidth + "px");
			matCard.css("opacity", "1");
			setTimeout(step2, 750);
		}
		function step2() {
			// 音效 ma_li 127 2013_11_7 转生2
			JSInterface.clickTone(127);

			mainCard.css("top", middleHeight + "px");
			matCard.css("top", middleHeight + "px");
			setTimeout(step3, 750);
		}
		function step3() {

			// 音效 ma_li 128 2013_11_7 转生3
			JSInterface.clickTone(128);

			lightRay.addClass("contentLightRay");
			mainCard.css("opacity", "0");
			matCard.css("opacity", "0");
			setTimeout(step4, 900);
		}
		function step4() {
			$(selector).css("display", "none");
			$(".finalRes").css("display", "block");
			// ma_li 停止转生背景音乐
			JSInterface.clickTone(229);
		}
		return setTimeout(init, 500);
	};
	// 战斗动画
	this.fightAnimation = function(selector, fightPro, imgSrcPrefix,fightResult) {

		// 动画声音消息格式：1-100是点击按钮预留区间 100-200是战斗预留区间 100:代表战斗背景音乐开始循环播放
		// 200:代表战斗背景音乐停止放映 101 :卡牌进行攻击102 :卡牌死亡103:特色攻击音效104:血量减少的音效105:战场出现的列阵

		var container = $(selector);
		var upImg = $(selector + " .upPart .fighter");
		var downImg = $(selector + " .downPart .fighter");
		var Vs = $(selector + " .VS");
		var mask = $(" .whiteMask");

		var maxWidth = 720;
		// var maxHeight = 720 / window.screen.availWidth *
		// window.screen.availHeight;
		var maxHeight = maxWidth / 2 * 3;
		var partHeight = maxHeight * 0.5;
		var imgHeight = maxHeight * 0.14;
		var imgWidth = maxWidth * 0.185;
		var widthsig = (maxWidth - 5 * imgWidth) / 6;
		var widthInteval = imgWidth + widthsig;
		var widthMiddle = (maxWidth - imgWidth) / 2;

		function init() {
			if (fightPro == null) {
				step4();
				return;
			}
			if (!playCss3AnimationFlag) {
				// step11();
				return;
			}
			// 100代表战斗背景音乐开始循环播放
			if (playCss3AnimationFlag == true) {
				JSInterface.clickTone(100);
			}
			var count = 0;
			container.find(".upPart").css("height", partHeight + "px");
			container.find(".downPart").css("height", partHeight + "px");
			container.find(".upPart").find(".nameHolder").css("top",
					partHeight * 0.875 + "px")
			container.find(".downPart").find(".nameHolder").css("top",
					partHeight * 1 + "px")
			container.find(".upPart").find(".defensePower").css("top",
					partHeight * 0.875 + 60 + "px")
			container.find(".downPart").find(".attackPower").css("top",
					partHeight * 1 - 40 + "px")
			upImg.css("top", (-imgHeight) + "px");
			upImg.css("width", imgWidth + "px");
			// upImg.find("img").css("height", imgHeight * 0.8 + "px");
			upImg.find("img").css("width", imgWidth + "px");
			upImg
					.each(function() {
						if (count >= 5) {
							$(this).css("left",
									2 * widthInteval + widthsig + "px");
							return;
						}
						$(this).css("left",
								(count++) * widthInteval + widthsig + "px");
					});
			upImg.css("top", "0px");
			count = 0;
			downImg
					.each(function() {
						if (count >= 5) {
							$(this).css("left",
									2 * widthInteval + widthsig + "px");
							return;
						}
						$(this).css("left",
								(count++) * widthInteval + widthsig + "px");
					});
			// downImg.css("top",partHeight+"px");
			downImg.css("top", (maxHeight - imgHeight) + "px");
			downImg.css("width", imgWidth + "px");
			// downImg.find("img").css("height", imgHeight * 0.8 + "px");
			downImg.find("img").css("width", imgWidth + "px");
			Vs.css("top", (maxHeight - 360) / 2 + "px");
			Vs.css("left", maxWidth * 0.01 + "px");
			container.find(".cardHolder")
					.css("height", maxHeight * 0.45 + "px");
			setTimeout(step1, 300);
		}
		;
		// 动画开始，卡
		function step1() {

			// 105战场出现的列阵 调用
			if (playCss3AnimationFlag == true) {
				JSInterface.clickTone(105);
			}
			container
					.find(".downPart")
					.find(".cardHolder")
					.css3Animate(
							{
								bottom : "8%",
								time : "300ms",
								timingFunction : "ease",
								callback : function() {
									container
											.find(".downPart")
											.find(".nameHolder")
											.css3Animate(
													{
														left : "0px",
														time : "300ms",
														timingFunction : "ease",
														callback : function() {
															container
																	.find(
																			".downPart")
																	.find(
																			".attackPower")
																	.css3Animate(
																			{
																				left : "0px",
																				time : "300ms",
																				timingFunction : "ease"
																			});
														}
													})
								}
							});
			container
					.find(".upPart")
					.find(".cardHolder")
					.css3Animate(
							{
								rotateX : "180deg",
								time : "0ms",
								noneedorigin : true,
								callback : function() {
									container
											.find(".upPart")
											.find(".cardHolder")
											.css3Animate(
													{
														rotateX : "180deg",
														top : "2%",
														time : "300ms",
														timingFunction : "ease",
														noneedorigin : true,
														callback : function() {
															container
																	.find(
																			".upPart")
																	.find(
																			".nameHolder")
																	.css3Animate(
																			{
																				right : "0px",
																				time : "300ms",
																				timingFunction : "ease",
																				callback : function() {
																					container
																							.find(
																									".upPart")
																							.find(
																									".defensePower")
																							.css3Animate(
																									{
																										right : "0px",
																										time : "300ms",
																										timingFunction : "ease",
																										callback : step2
																									});
																				}
																			});
														}
													});
								}
							});
		}
		;
		function step2() {
			// CARD SHOW
			// 卡牌起始序号
			var signIdx = 1;
			// 卡牌批次序号
			var groups = 1;
			// 最大卡牌数
			var maxCards = 6;
			// 上半部分卡牌出现效果调用方法
			function callbackUp() {
				this.css("top", (4.5 - groups) * (imgHeight - 20) * 0.6 - 20
						* (groups - 1) + "px");
				this.css("opacity", 1);
			}
			;
			// 下班部分卡牌出现效果调用方法
			function callbackDown() {
				this.css("top", maxHeight - (6.5 - groups) * (imgHeight) * 0.6
						+ 10 * (groups - 1) + "px");
				this.css("opacity", 1);
			}
			;
			// 卡牌出现过程
			(function() {
				if (signIdx >= maxCards)
					return;
				for ( var len = signIdx + groups; signIdx < len; signIdx++) {
					callbackUp.call(upImg.siblings(".pos" + signIdx));
					callbackDown.call(downImg.siblings(".pos" + signIdx));
				}
				groups += 1;
				// 调用3次
				setTimeout(arguments.callee, 300);
			})();
			setTimeout(step3, 300 * 3.5)
		}
		;
		// 战斗过程
		function step3() {
			// 攻击力显示div
			var attackInfoHolder = container.find(".attackInfoHolder");
			// 生成图片的攻击力图片
			var generateNumberImg = function(attackVal) {
				if (isNaN(attackVal))
					return;
				var attackValStr = new String(attackVal);
				var dataString = "<img src='" + imgSrcPrefix
						+ "/pvpn/-.png' />";
				for ( var i = 0, len = attackValStr.length; i < len; i++)
					dataString += "<img src='" + imgSrcPrefix + "/pvpn/"
							+ attackValStr[i] + ".png' />";
				return dataString;
			};
			// 攻击阵营
			var camp = 0;
			// 流程正式开始
			(function fightProcess() {
				if (!fightPro[0]) {
					step4();
					return;
				}
				var res = fightPro[0].steps.shift();
				if (!res) {
					camp ^= 1;
					fightPro.shift();
					arguments.callee.call(window);
					return;
				}
				var attackPos = $.fn["siblings"].call(camp ? upImg : downImg,
						".pos" + (res.attackCardposition + 1));
				var defencePos = $.fn["siblings"].call(camp ? downImg : upImg,
						".pos" + (res.defenceCardposition + 1));
				var temppostop = attackPos.css("top");
				var tempposleft = attackPos.css("left");
				attackPos.css("z-index", "9999");
				// attack 攻击位置出击
				attackPos
						.css3Animate({
							top : defencePos.css("top"),
							left : defencePos.css("left"),
							timingFunction : "ease",
							time : "250ms",
							callback : function() {
								// 101卡牌进行攻击
								if (playCss3AnimationFlag == true) {
									JSInterface.clickTone(101);
								}
								// 更新剩余攻击次数
								attackPos.find("span").html(
										res.leftAttackAttackNumber);
								// attack 战斗位置恢复
								attackPos.css3Animate({
									top : temppostop,
									left : tempposleft,
									timingFunction : "ease",
									time : "250ms"
								});
								// 被攻击的效果
								defencePos
										.find("img")
										.css3Animate(
												{
													opacity : 0,
													timingFunction : "ease",
													time : "150ms",
													callback : function() {
														// 根据攻击防守方剩余hp来决定防守方卡牌亮度
														res.defenceLeftHp <= 0
																&& defencePos
																		.find(
																				"img")
																		.css(
																				"opacity",
																				"1");
														$.fn["css3Animate"]
																.call(
																		res.defenceLeftHp <= 0 ? defencePos
																				: defencePos
																						.find("img"),
																		{
																			opacity : res.defenceLeftHp <= 0 ? 0.5
																					: 1,
																			timingFunction : "ease",
																			time : "150ms",
																			callback : function() {
																				// 104血量减少的音效

																				if (playCss3AnimationFlag == true) {
																					JSInterface
																							.clickTone(104);
																				}
																				// 攻击位置纵向高度恢复
																				attackPos
																						.css(
																								"z-index",
																								"0");
																				if (res.defenceLeftHp <= 0) {
																					// 卡牌死亡
																					if (playCss3AnimationFlag == true) {
																						JSInterface
																								.clickTone(102);

																					}
																				}
																				setTimeout(
																						fightProcess,
																						400);
																			}
																		});
														// 设置防守方血条长度
														defencePos
																.find(".target")
																.css(
																		"width",
																		(res.defenceLeftHp / parseInt(defencePos
																				.attr("maxHp")))
																				* 100
																				+ "%");
														// 攻击力设置为图片并添加进对应div
														attackInfoHolder
																.find(".normal")
																.html(
																		generateNumberImg((res.attackPower
																				- res.defence < 1) ? 1
																				: res.attackPower
																						- res.defence));
														// skill demage
														// 调整攻击力div显示位置
														attackInfoHolder
																.css3Animate({
																	top : parseInt(defencePos
																			.css(
																					"top")
																			.replace(
																					"px",
																					""))
																			+ 50
																			+ "px",
																	left : parseInt(defencePos
																			.css(
																					"left")
																			.replace(
																					"px",
																					""))
																			+ 20
																			+ "px",
																	time : "0",
																	callback : function() {
																		attackInfoHolder
																				.css3Animate({
																					opacity : 1,
																					timingFunction : "ease",
																					time : "300ms",
																					callback : function() {
																						attackInfoHolder
																								.css3Animate({
																									opacity : 0,
																									timingFunction : "ease",
																									time : "300ms"
																								});
																					}
																				});
																	}
																});
													}
												});
							}
						});
			})();
		}
		;
		// 显示胜利图图片并清除动画效果
		function step4() {
			Vs.css3Animate({
				opacity : 1,
				width : maxWidth * 0.98 + "px",
				height : maxWidth * 0.45 + "px",
				time : "300ms",
				timingFunction : "ease",
				callback : function() {
					setTimeout(function() {
						// 清除动画效果
						container.css("display", "none");
						$(".finalRes").css("display", "block");

						// 200代表战斗背景音乐停止放映
						JSInterface.clickTone(200);
						if(fightResult != null){
							if(fightResult == "WIN"){
								//音效    ma_li   胜利    
								JSInterface.clickTone(125);								
							}else{
								//音效    ma_li   失败   
								JSInterface.clickTone(112);								
							}
						}
						if (backUrl != 'false') {
							location.href = backUrl;
						}
					}, 2000);
				}
			});
		}
		;
		return init();
	};
	// 抽多张卡牌
	this.cardGetAnimationMany = function(selector) {
		var animationHolder = $(selector);
		var surCols = $(selector + ' .surprise');
		var cardCols = $(selector + ' .surprise .card');
		var lightRay = $(selector + ' .contentLightRayOper');
		var clickContinue = $(selector + ' .clickContinue');

		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth
				* window.screen.availHeight;
		var imgHeight = maxHeight * 0.32;
		var imgWidth = maxWidth * 0.185;
		var widthInteval = imgWidth + (maxWidth - 5 * imgWidth) / 6; //
		var spacerHeight = (maxHeight - (2 * imgHeight + 20)) / 2 - imgHeight
				/ 4;
		animationHolder.css("height", maxHeight + "px");
		animationHolder.find('.spacer').css('height', spacerHeight + 'px');

		function init() {
			// 音效 ma_li 开始招募佣兵BG音乐
			JSInterface.clickTone(116);

			lightRay.find('.light').css('top', spacerHeight + 'px');
			cardCols.css("height", imgHeight + "px");
			cardCols.css("width", imgWidth + "px");
			surCols.css("height", imgHeight + "px");
			surCols.css("width", imgWidth + "px");
			$(selector + ' .upPart').css("height", imgHeight + "px");
			$(selector + ' .downPart').css("height", imgHeight + "px");

			var count = 0;
			surCols.each(function() {
				if (count == 5)
					count = 0;
				$(this).css("left", count * widthInteval + "px");
				count++;
			});
			$(selector + ' .contentMask').css("opacity", "0");
			setTimeout(step1, 500);
		}
		function step1() {
			// 音效 ma_li 2013_11_7 招募1
			JSInterface.clickTone(114);

			surCols.siblings('.odd').css("opacity", "1");
			setTimeout(step2, 1000);
		}
		function step2() {
			surCols.siblings('.even').css("opacity", "1");
			setTimeout(function() {
				$(document).bind("touchstart", function() {
					JSInterface.clickTone(1);
					clickContinue.css("display", "none");
					step3();
				});
				clickContinue.css("display", "block");
			}, 1000);
		}
		function step3() {
			var con = 0;
			var Interval = setInterval(function() {
				if (con >= 10) {
					clearInterval(Interval);
					$(document).unbind("touchstart");
					$(document).bind("touchstart", function() {
						JSInterface.clickTone(1);
						clickContinue.css("display", "none");
						step4();
					});
					clickContinue.css("display", "block");
					return;
				}
				var target = $(surCols.get(con)).find('.card');
				target.css('opacity', '0');
				setTimeout(function() {
					target.attr('src', $(surCols.get(con++))
							.find('.hiddenPart').attr('src'));
					target.css('opacity', '1');
				}, 300);
			}, 1200);
		}
		function step4() {
			lightRay.css("display", "block");
			lightRay.addClass('contentLightRay');
			setTimeout(step5, 1000);
		}
		function step5() {
			// 音效 ma_li 招募2
			JSInterface.clickTone(115);

			animationHolder.css('display', 'none');
			$(' .finalRes').css('display', 'block');
			// 音效 ma_li 停止招募佣兵BG
			JSInterface.clickTone(216);

			$(document).unbind("touchstart");
		}
		return setTimeout(init, 500);
	};
	// 新手卡包抽取动画
	this.cardGetAnimationNew = function(selector) {
		var animationHolder = $(selector);
		var surCols = $(selector + ' .surprise');
		var cardCols = $(selector + ' .surprise .card');
		var lightRay = $(selector + ' .contentLightRayOper');
		var mask = $(selector + ' .contentMask');
		var clickContinue = $(selector + ' .clickContinue');

		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth
				* window.screen.availHeight;
		var imgHeight = maxHeight * 0.32;
		var imgWidth = maxWidth * 0.185;
		var widthInteval = (maxWidth - 3 * imgWidth) / 4;
		var top = (maxHeight - imgHeight) / 2 - imgHeight / 2;
		animationHolder.css("height", maxHeight + "px");
		animationHolder.find(".contentGet").css("height",
				maxHeight * 0.6 + "px");

		function init() {
			// 音效 ma_li 开始招募佣兵BG
			JSInterface.clickTone(116);

			lightRay.find('.light').css('top', top + 'px');
			cardCols.css("height", imgHeight + "px");
			cardCols.css("width", imgWidth + "px");
			surCols.css('-webkit-transition', 'opacity 0.5s');
			surCols.css("height", imgHeight + "px");
			surCols.css("width", imgWidth + "px");
			surCols.css('top', top + 'px');
			var count = 0;
			surCols.each(function() {
				if (count >= 3)
					return;
				$(this).css("left",
						(count + 1) * widthInteval + count * imgWidth + "px");
				count++;
			});
			mask.css("opacity", "0");
			setTimeout(step1, 500);
		}
		function step1() {
			// 音效 ma_li 招募1
			JSInterface.clickTone(114);

			surCols.css("opacity", "1");
			setTimeout(function() {
				$(document).bind("touchstart", function() {
					JSInterface.clickTone(1);
					clickContinue.css("display", "none");
					step3();
				});
				clickContinue.css("display", "block");
			}, 1000);
		}
		function step3() {
			var con = 0;
			var Interval = setInterval(function() {
				if (con >= 3) {
					clearInterval(Interval);
					$(document).unbind("touchstart");
					$(document).bind("touchstart", function() {
						JSInterface.clickTone(1);
						clickContinue.css("display", "none");
						step4();
					});
					clickContinue.css("display", "block");
					return;
				}
				var target = $(surCols.get(con)).find('.card');
				target.css('opacity', '0');
				setTimeout(function() {
					target.attr('src', $(surCols.get(con++))
							.find('.hiddenPart').attr('src'));
					target.css('opacity', '1')
				}, 300);
			}, 1000)
		}
		function step4() {
			lightRay.css("display", "block");
			lightRay.addClass('contentLightRay');
			setTimeout(step5, 1000);
		}
		function step5() {
			// 音效 ma_li 招募2
			JSInterface.clickTone(115);

			animationHolder.css('display', 'none');
			$(' .finalRes').css('display', 'block');
			// 音效 ma_li 停止招募BG
			JSInterface.clickTone(216);
			$(document).unbind("touchstart");
		}
		return setTimeout(init, 500);
	};
	// 抽取单张卡牌
	this.cardGetAnimationOne = function(selector) {
		var animationHolder = $(selector);
		var surprise = $(selector + ' .surprise');
		var card = $(selector + ' .surprise .card');
		var lightRay = $(selector + ' .contentLightRayOper');
		var clickContinue = $(selector + ' .clickContinue');

		var maxWidth = 720;
		var maxHeight = 720 / window.screen.availWidth
				* window.screen.availHeight;
		var imgHeight = maxHeight * 0.6;
		var imgWidth = maxWidth * 0.7;
		var leftInteval = (maxWidth - imgWidth) / 2;
		var top = (maxHeight - imgHeight) / 2 - imgHeight / 4;
		animationHolder.css("height", maxHeight + "px");

		function init() {

			// 音效 ma_li 开始招募BG
			JSInterface.clickTone(116);

			lightRay.find('.light').css('top', top + 'px');
			card.css("height", imgHeight + "px");
			card.css("width", imgWidth + "px");
			surprise.css("height", imgHeight + "px");
			surprise.css("width", imgWidth + "px");
			surprise.css('top', top + 'px');
			surprise.css("left", leftInteval + "px");
			clickContinue.css("margin-top", top + imgHeight + "px");
			$(selector + ' .contentMask').css("opacity", "0");
			setTimeout(step1, 500);
		}
		function step1() {
			// 音效 ma_li 招募1
			JSInterface.clickTone(114);

			surprise.css("opacity", "1");
			setTimeout(function() {
				$(document).bind("touchstart", function() {
					JSInterface.clickTone(1);
					clickContinue.css("display", "none");
					step2();
				});
				clickContinue.css("display", "block");
			}, 1000);
		}
		function step2() {
			lightRay.css("display", "block");
			lightRay.addClass('contentLightRay');
			setTimeout(step3, 1000);

		}
		function step3() {
			// 音效 ma_li 招募2
			JSInterface.clickTone(115);

			card.attr("src", $(selector + " .hiddenPart").attr("src"));
			lightRay.css("opacity", "0");
			setTimeout(function() {
				$(document).unbind("touchstart");
				$(document).bind("touchstart", function() {
					JSInterface.clickTone(1);
					clickContinue.css("display", "none");
					step4();
					window.event.preventDefault();
				});
				clickContinue.css("display", "block");
			}, 1000);
		}
		function step4() {
			animationHolder.css("display", "none");
			$(' .finalRes').css('display', 'block');
			// 音效 ma_li 停止招募BG音乐
			JSInterface.clickTone(216);
			$(document).unbind("touchstart");
		}
		return setTimeout(init, 500);
	};
	// 任务执行 boss战动画
	this.executeMission = function(selector, callback) {
		// 音效 ma_li PVE攻击音效
		JSInterface.clickTone(107);
		var func = null;
		var targetElement = null;
		if (event) {
			targetElement = event.srcElement;
			func = targetElement.onclick;
			targetElement.onclick = "";
		}
		var lightImg = $(selector + " .lightOper");
		var content = $(selector + " .contentOper");
		var noticeBar = $(selector + " .noticeOper");
		function Effect() {
			var lightPlayTimes = 6;
			content.addClass("contentShake");

			noticeBar.size() > 0 && noticeBar.addClass("noticeBar");
			

			var Interval = setInterval(function() {
				// 音效 ma_li 动画结束，经验增长,行动能量减少，征程进度增加 2013-11-7
				JSInterface.clickTone(124);
				if (lightPlayTimes < 0) {
					clearInterval(Interval);
					content.removeClass("contentShake");
					lightImg.css("opacity", "0");
					noticeBar.size() > 0 && noticeBar.removeClass("noticeBar");
					callback && callback();
					if (targetElement != null)
						targetElement.onclick = func;
					return;
				}
				lightImg.css('left', Math.random() * 170 + 'px');
				lightImg.css('top', Math.random() * 360 - 150 + 'px');
				lightImg.addClass("light");
				setTimeout(function() {
					lightImg.removeClass("light");
				}, 200);
				lightPlayTimes--;
			}, 250);

		}
		return Effect();
	}
}
//
var $animation = new css3AnimationFactory();