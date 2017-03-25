var $$ = {};

$$.ajax = function(options) {
    var defaults = {
        method: 'GET',
        headers: {
          "requestType": "ajax"
        },
        dataType: 'html',
        showMask: true,
        error: function(jqXHR, textStatus, errorThrown) {
            $('#_shadow_bg').hide();
            if(console && console.info) {
                console.info("unexpected exception-------------------Start");
                console.info(options);
                console.info(jqXHR);
                console.info(textStatus);
                console.info(errorThrown);
                console.info("unexpected exception--------------------End");
            }
        }
    };
    var opts = $.extend(defaults, options);
    opts.success = function(resp, param2, param3) {
        $('#_shadow_bg').hide();
        if(options && options.success) {
            options.success(resp, param2, param3);
        }
    };
    
    if(opts.showMask) {
        $('#_shadow_bg').css('top', document.body.scrollTop+"px").show();
    }
    $.ajax(opts);
    
    return false;
};
