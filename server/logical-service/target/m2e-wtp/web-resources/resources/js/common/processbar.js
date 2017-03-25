/**
 * jq.web.actionsheet - a actionsheet for html5 mobile apps
 * Copyright 2012 - AppMobi 
 */
(function($) {
    $.fn["processbar"] = function(opts) {
        var tmp = null;
        for (var i = 0; i < this.length; i++) {
			tmp = new processbar(this[i], opts);
        }
        return this.length == 1 ? tmp : this;
    };
    var processbar = (function() {
		var processbar = function(elID, opts) {
            if (typeof elID == "string" || elID instanceof String) {
                this.el = document.getElementById(elID);
            } else {
                this.el = elID;
            }
            if (!this.el) {
                alert("Could not find element for actionsheet " + elID);
                return;
            }
            var that = $(elID);
            if(that.hasClass("processing-bar")) return;
            
            var width = that.attr("processbar");
            if(width == "") {
                width = 0;
            }
            var fill = parseFloat(width) > 0;
            var full = parseFloat(width) == 100;
			var h = "<div class='processbar-child'>" + " <div "+ (that.attr("noNum")=="true"?"style=\"width:100%;\"":"style=\"width:70%;\"")
					+ ">      <table>" + "         <tr>" + "             <td "
					+ (fill ? "class='fill'" : "") + "></td>"
					+ "             <td><div class='target' style='width:" + (opts?opts.lastBar.shift():0)
					+ "%;'>&nbsp;</div></td>" + "             <td "
					+ (full ? "class='full'" : "") + "></td>"
					+ "         </tr>" + "     </table>" + " </div>"
					+ (that.attr("noNum")=="true"?"":"<div style=\"width:30%; \">" + "    <span class='font'>" + width
					+ "%</span>" + " </div>") + "<div></div>" + "</div>";
            that.addClass("processing-bar").append(h);
			//动画效果
			setTimeout(function(){
				that.find(".target").css3Animate({width:width+"%",time:"150ms"});
			},100);
        };
        return processbar;
    })();
    $(function() {
       $('div[processbar]').processbar();
    });
})(jq);

//ajax success回调函数中调用
//param1 开始修改的processBar的索引 从0开始
//param2 要修改的processBar的数值 (列表)
function updateProcessBar(beginIndex,processbarValueList) {
	var opts = new Object();
	opts.lastBar = new Array();
	var processbars = $('div[processbar]');
	for(var i = beginIndex,len = beginIndex+processbarValueList.length;i<len;i++) {
		var childhtml = $(processbars.get(i)).find(".processbar-child");
		opts.lastBar.push(childhtml.find(".target").css("width"));
		processbars.get(i).setAttribute("processbar", processbarValueList[i-beginIndex]);
		$(processbars.get(i)).removeClass("processing-bar");
		childhtml.remove();
	}
	processbars.processbar(opts);
	opts = null;
	processbars = null;
}
//调用sample
//updateProcessBar(2,[13,46]);
