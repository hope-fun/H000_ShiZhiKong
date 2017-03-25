$(document).ready(function() {
	
//	isChecked = false;
	isAllChecked = false;
	//全选
	$(".btn_selAll").click(function() {
		if(!isAllChecked) {
			$("input[name=isSale]").prop("checked", false); //全选
		}else {
			$("input[name=isSale]").prop("checked", true);
		}
		
		$(".css-label").click();
		
		$("input[name=isSale]:disabled").each(function() {
			$(this).prop("checked", false);
		});
	
		
	});
	
	//装备卸除
	$(".btn_disboard").click(function() {
		var cardId = $(this).val();
		var urlStr = $("#doDisboardEquUrl").val() + cardId;
		var randomParms = {anticache : Math.floor(Math.random()*1000)};
		$.post(urlStr, randomParms, function(data) {
			if(null != data && data.result){
				var self = data.data;
				$("#strengthRequire_" + cardId).text(self.strengthRequireAdded);
				$("#attack_" + cardId).text(self.attackAdded);
				$("#defence_" + cardId).text(self.defenceAdded);

				$("#sell_out_" + cardId).prop("disabled", false);
				$(".equImg_" + cardId).css("display", "none");
				$("#info_disboard_" + cardId).css("display", "none");
				$("#btn_disboard_" + cardId).css("display", "none");
			}
		}, "json");
	});
	
	//出售
	$(".btn_sale").click(function() {
		var totalPrice = 0;
		var leg = $("input[type='checkbox'][name='isSale']:checked").length;
		if(0 < leg){
			var isSaleCards = "";
			$("input[type=checkbox][name=isSale]:checked").each(function() {
				isSaleCards += $(this).val() + ",";
				totalPrice += parseInt(this.getAttribute("price"))
			});
			kpyxConfirm($("#cg0301chechedcards").val() + totalPrice + $("#cg0301raidtypeSCOIN").val(), function() {
				window.location.href = $("#doCardsSaleUrl").val() + isSaleCards;
			}, function() {
				return false;
			})
		} else {
			kpyxTips($("#cg0301choosecards").val());
		}
	
	});
	
	$(".css-label").click(function(){
		var testId = $(this).attr("value");
		var checkDisabled = $("#sell_out_" + testId).prop('disabled');
		
		//判断当前的隐藏check是否可用
		if(false == checkDisabled){
			var isChecked = $("#sell_out_" + testId).prop('checked');
			if(isChecked == false){
				$(this).removeClass('checkbox-pic-style').addClass('checkbox-checked-pic-style');
				$("#sell_out_" + testId).prop('checked', true);
				isAllChecked = true;
			}else{				
				$(this).removeClass('checkbox-checked-pic-style').addClass('checkbox-pic-style');
				$("#sell_out_" + testId).prop('checked', false);
				isAllChecked = false;
			}
		}
	});

});