function validateForm(pathFields) {
    var cnt = 0;
    $(pathFields).each(function (index) {
        $(this).removeClass('error');
    });
    $(pathFields + "[data-is-checked='Y']").each(function (index) {
        if (!$(this).is(":checked")) {
            $(this).addClass('error');
            cnt++;
        }
    });
    $(pathFields + "[data-required='Y']").each(function (index) {
        if ($.trim($(this).val()) == '') {
            $(this).addClass('error');
            cnt++;
        }
    });
    $(pathFields).each(function (index) {
        var attr = $(this).attr('data-minlength');
        if (isInt(attr)) {
            if (typeof attr !== typeof undefined && attr !== false) {
                if ($.trim($(this).val().length) < parseInt(attr)) {
                    $(this).addClass('error');
                    cnt++;
                }
            }
        }
    });
    $(pathFields + "[data-regex='email']").each(function (index) {
        if ($.trim($(this).val()) != '') {
            var res = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test($(this).val());
            if (!res) {
                $(this).addClass('error');
                cnt++;
            }
        }
    });
    return cnt;
}

function isInt(val) {
    var regex = /^([0-9])+$/;
    return regex.test(val);
}