$(function () {

    $('#btnLogin').click(function () {

        var errcnt = validateForm('.login .main-content .input-group input');
        if (errcnt > 0) {
            alert('El formulario tiene datos incompletos y/o erróneos. Revisá los campos marcados en rojo.');
            return;
        }

        var ok = true;
        var data = {
            username: $('#email').val(),
            password: $('#password').val(),
            remember: false
        }

        if (ok)
            $.post(
                '/api/user/auth/',
                data,
                function (data) {
                    if (data >= 0) {
                        if (data == 0)
                            window.location.href = decodeURIComponent($.urlParam('ReturnUrl') || '/admin/Users.aspx');
                        else
                            window.open('/api/register/downloadExcel');
                        
                    }
                    else {

                        $('.login .main-content .input-group #email').parent().addClass("error");
                        $('.login .main-content .input-group #password').parent().addClass("error");
                        alert('El usuario o la contraseña que ingresaste no son correctos, Revisá tus credenciales de acceso.');
                    }
                }, 'json');

        return false;
    });

    $('#email, #password, #remember').keypress(function (event) {
        evt = (event) ? event : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode == 13) {
            event.preventDefault();
            return false;
        }
    });


    $.urlParam = function (name) {
        var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
        if (results === null)
            return 0;
        return results[1] || 0;
    }

});