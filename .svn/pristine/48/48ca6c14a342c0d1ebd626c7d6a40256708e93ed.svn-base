	
	//跳至装备一览
	function loadEquipList() {
		var form = document.forms[0];
		form.action = equipmentList;
		form.submit();
	}
	//跳至装备出售
	function loadSalesList() {
		var form = document.forms[0];
		form.action = equipmentSaleList;
		form.appendChild(document.equipments.playerCardId.cloneNode())
		form.submit();
	}
	//跳至装备拍卖
	function loadAuctionlist() {
		var form = document.forms[0];
		form.action = equipmentAucitonList;
		form.appendChild(document.equipments.playerCardId.cloneNode())
		form.submit();
	}
	//更换卡牌
	function changePlayerCard(detailUrl) {
		var form = document.forms[0];
		form.method = "POST";
		form.action = changeCard + '?detailUrl=' + detailUrl;
		form.submit();
	}
	//上下页跳转信息绑定
	$(function() {
		$(".pagination-button").bind(
				"click",
				function() {
					document.forms[0].appendChild(document
							.getElementsByName("playerCardId")[0].cloneNode());
				})
	});

	var pageIndex;
	var pageSize;
	//装备分解
	function fenjie(url) {
		var form = document.forms[0];
		pageIndex = form.pageIndex.value
		pageSize = form.pageSize.value

		var msg = explode + '?'
		kpyxConfirm(msg, function() {
//			window.location.href = url
//					+ "&pageIndex="
//					+ pageIndex
//					+ "&pageSize="
//					+ pageSize;
			var u = url + "&pageIndex=" + pageIndex + "&pageSize=" + pageSize;
			doAjaxSubmit(u);
			//return true;
		}, function() {
			return false;
		});
	}
	
	//ajax分解成功反馈
	function doAjaxSubmit(u) {
		//$("#" + u).attr("onclick", "");
		//var id = u;
		$$.ajax({
		    url: u.replace("index","explode"),
	      	type: 'POST',
	      	data: null,
	      	dataType: 'json',
	      	showMask: false,
	      	success: function(resp) {
					if (resp != null) {
						var options = {
							suppressTitle: true, 
							cancelOnly:true,
							message:fenjiechenggong + "! " + gets + " <br/>" + resp.data + lingqu + "!", 
							doneCallback: function () {
								window.location.href = u.replace("&isExplode=true","");
							}
						};
						$(document.body).popup(options)
					} else {
						alert(fenjieshibai + "!")
					}
					//$("#" + id).attr("onclick", "fenjie(" +id + ")")
	      	}
		});
	}
	
	//检查装备是否已满
	function check() {
		var e1 = pe1;
		var e2 = pe2;
		var e3 = pe3;
		if ((e1 != null && e1 != "")
				&& (e2 != null && e2 != "")
				&& (e3 != null && e3 != "")) {
			alert(zhuangbeiyiman + '!')
			return false;
		} else {
			return true;
		}
	}
	//装备镶嵌
	function xiangqian(obj) {
		if (!check())
			return false;
		add(obj);
	}
	//装备镶嵌跳转
	function add(obj) {
		var form = document.forms[0];
		pageIndex = form.pageIndex.value
		pageSize = form.pageSize.value

		$(obj).attr("href", $(obj).attr("id")
						+ "&pageIndex="
						+ pageIndex
						+ "&pageSize="
						+ pageSize)
	}