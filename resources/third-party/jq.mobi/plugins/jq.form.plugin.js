/**
 * Form plugin based on JQ core
 */
(function($) {
    /**
     * Serailizes a form into a json object
       ```
       $().serializeJson();
       ```
     * @return {JSON object}
     * @title $().serializeJson()
     */
    $.fn["serializeJson"] = function() {
        if (this.length == 0)
            return {};
        var o = {};
        for (var i = 0; i < this.length; i++) 
        {
            this.slice.call(this[i].elements).forEach(function(elem) {
                var type = elem.getAttribute("type");
                if (elem.nodeName.toLowerCase() != "fieldset" && !elem.disabled && type != "submit" 
                && type != "reset" && type != "button" && ((type != "radio" && type != "checkbox") || elem.checked))
                {
                    var name = elem.getAttribute("name");
                    
                    if(elem.type=="select-multiple") {
                        o[name] = [];
                        for(var j = 0; j < elem.options.length; j++){
                            if(elem.options[j].selected)
                                o.push(elem.options[j].value)
                        }
                    }
                    else {
                        if (o[name]) {
                            if (!$.isArray(o[name])) {
                                o[name] = [o[name]];
                            }
                            o[name].push(elem.value);
                        }
                        else {
                            o[name] = elem.value;
                        }
                    }
                }
            });
        }
        return o;
    };
})(jq);
