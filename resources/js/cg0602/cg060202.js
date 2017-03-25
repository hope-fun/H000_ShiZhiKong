
function loadEquipList(){
	var form = document.forms[0];
	form.action = equipmentList;
	form.appendChild(document.equipmentform.playerCardId.cloneNode())
	form.submit();
}

function loadSalesList() {
	var form = document.forms[0];
	form.action = equipmentSaleList;
	form.submit();
}

function loadAuctionlist(){
	var form = document.forms[0];
	form.action = equipmentAucitonList;
	form.submit();
}

function selectAll(){
	var chs = document.getElementsByName('sellOut');
	
	var count = 0;
	for(i = 0 ; i < chs.length ; i++){
		if(chs[i].checked){
			count ++;
		}
	}
	
	if(count == chs.length) {
		isSelectedAll = true;
	}
	if(count == 0) {
		isSelectedAll = false;
	}
	
    for(i = 0 ; i < chs.length ; i++){
    	if(isSelectedAll){
    		console.log('deselect all');
			chs[i].setAttribute("checked","true")
    	}else{
    		console.log('select all');
    		chs[i].setAttribute("checked","false")
    		chs[i].removeAttribute("checked")
			
    	}
	}
    
    isSelectedAll = !isSelectedAll;
    colorChange()
}

function sellEquipments(totalSize){
	var chs = document.getElementsByName('sellOut');
	var checkNum = 0;
	var isChecked = false;
	var totalPrice = 0;
	for(i = 0 ; i < chs.length ; i++){
		if(chs[i].checked != '') {
			var price = chs[i].getAttribute("class")
			totalPrice = totalPrice + parseInt(price)
			isChecked = true;
			checkNum ++;
		}
	}
	if(isChecked) {
		kpyxConfirm(salemsg1 + "?<br />" + salemsg2 + totalPrice + crystal, function() {
			var form = document.equipmentform
			form.action = equipmentSaleList;
			var formPage = document.forms[0]
			form.appendChild(formPage.pageIndex.cloneNode())
			form.appendChild(formPage.pageSize.cloneNode())
			
			var pageIndex = form.pageIndex.value;
			var pageSize = form.pageSize.value;
			
			totalSize = totalSize - checkNum;
			if(totalSize <= pageIndex * pageSize) {
				pageIndex = pageIndex - 1;
				if(pageIndex < 0)
					pageIndex = 0;
				form.pageIndex.value = pageIndex;
			}
			form.submit();
		}, function() {
			return false;
		})
		
	}
}

$(function() {
	$(".pagination-button").bind(
			"click",
			function() {
				document.forms[0].appendChild(document.equipmentform.playerCardId.cloneNode());
			})
});

function colorChange(obj) {
	$(".chushou").attr("class","chushou")
	var chs = document.getElementsByName('sellOut');
	for(i = 0 ; i < chs.length ; i++){
		var id = chs[i].getAttribute("value")
		if(obj != null) {
			var ids = obj.getAttribute("id").replace(obj.getAttribute("class"), "")
			var s = document.getElementById("input"+ids)
		}
		if(obj != null && !s.checked) {
			s.setAttribute("checked","true")
			$("#checkbox-pic-style"+ids).css("display","none");
			$("#checkbox-checked-pic-style"+ids).css("display","inline");
			break;
		}else if(obj != null && s.checked) {
			s.setAttribute("checked","false")
		
			$("#checkbox-pic-style"+ids).css("display","inline");
			$("#checkbox-checked-pic-style"+ids).css("display","none");
			s.removeAttribute("checked")
			break;
		}else if(obj == null && chs[i].checked){
			chs[i].setAttribute("checked","false")
		
			$("#checkbox-pic-style"+id).css("display","inline");
			$("#checkbox-checked-pic-style"+id).css("display","none");
			chs[i].removeAttribute("checked")
		} else if(obj == null) {
			chs[i].setAttribute("checked","true")
			
			$("#checkbox-pic-style"+id).css("display","none");
			$("#checkbox-checked-pic-style"+id).css("display","inline");
		}
	}
	
	isChecked = false;
	for(i = 0 ; i < chs.length ; i++){
		if(chs[i].checked) {
			isChecked = true;
		}
	}
	if(!isChecked) {
		$(".chushou").attr("class", $(".chushou").attr("class") + " gray-button")
	}
}
