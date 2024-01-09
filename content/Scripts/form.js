$(function() {

    $("form div[data-form-info='channel']").change(function () {
        var optionSelected = $(this).find("option:selected");
        var valueSelected  = optionSelected.val();
        if (valueSelected == '3'){
            $("form div[data-form-info='numberemail'] label.form-label").html("Pasános tu email para contactarte");
            $("form div[data-form-info='numberemail'] input.form-control").attr('data-regex','email');
        }
        else {
            $("form div[data-form-info='numberemail'] label.form-label").html("Pasános tu número para contactarte");
            $("form div[data-form-info='numberemail'] input.form-control").removeAttr('data-regex');
        }

        validateAll();
    });
    $("form div[data-form-info='name']").focusout(function () {
        validateAll();
    });

    $("form div[data-form-info='province']").change(function () {
        validateAll();
    });

    $("form div[data-form-info='city']").focusout(function () {
        validateAll();
    });

    $("form div[data-form-info='numberemail']").focusout(function () {
        validateAll();
    });

    $("form div[data-form-info='insuranceoption'] input[type='checkbox']").click(function () {
        validateAll();
    });

    $("form button").click(function () {

         

        if (validateAll()!=0) 
            $('#ValidationErrorModal').modal('show');
        else
            SendForm();
         
    });

    var lshe = new LocalStorageHandler('formdata');
    var savedformdata = lshe.getValue();
    if (savedformdata != null) {
        $("form div[data-form-info='name'] input").val(savedformdata.name);
        $("form div[data-form-info='channel'] select").val(savedformdata.channel);
        $("form div[data-form-info='numberemail'] input").val(savedformdata.numberemail);
        $("form div[data-form-info='province'] select").val(savedformdata.province);
        $("form div[data-form-info='city'] input").val(savedformdata.city);
    }
 
    

});


 
function CleanForm(){
    $("form div input,form div select").removeClass('error');

    var lshg = new LocalStorageHandler('insurances');
    lshg.deleteValue();
    var lshg2 = new LocalStorageHandler('formdata');
    lshg2.deleteValue();
 


    var idHandler = new InsuranceHandler();
    idHandler.doRender();

    $("form div[data-form-info='name'] input").val('');
    $("form div[data-form-info='channel'] select").val('');
    $("form div[data-form-info='numberemail'] input").val('');
    $("form div[data-form-info='province'] select").val('');
    $("form div[data-form-info='city'] input").val('');
    var savedformdata = lshg2.getValue();
    if (savedformdata != null) {
        $("form div[data-form-info='name'] input").val(savedformdata.name);
        $("form div[data-form-info='channel'] select").val(savedformdata.channel);
        $("form div[data-form-info='numberemail'] input").val(savedformdata.numberemail);
        $("form div[data-form-info='province'] select").val(savedformdata.province);
        $("form div[data-form-info='city'] input").val(savedformdata.city);
    }
}

function validateAll() {

    const obj = {
        name: "",
        province: "",
        channel: "",
        city: "",
        numberemail: ""
    };

    var errors;
    var e2 = validateForm("form div[data-form-info='name'] input");
    if (e2 == 0) obj.name = $("form div[data-form-info='name'] input").val();
    errors = e2;
    e2 = validateForm("form div[data-form-info='channel'] select");
    if (e2 == 0) obj.channel = $("form div[data-form-info='channel'] select").val();
    errors += e2;
 
    e2 = validateForm("form div[data-form-info='province'] select");
    if (e2 == 0) obj.province = $("form div[data-form-info='province'] select").val();
    errors += e2;
    e2 = validateForm("form div[data-form-info='city'] input");
    if (e2 == 0) obj.city = $("form div[data-form-info='city'] input").val();
    errors += e2;

    e2 = validateForm("form div[data-form-info='numberemail'] input");
    if (e2 == 0) obj.numberemail = $("form div[data-form-info='numberemail'] input").val();
    errors += e2;

    $("form div[data-form-info='insuranceoption'] input[type='checkbox']").removeClass('error');
    if ($("form div[data-form-info='insuranceoption'] input:checked").length == 0){
        $("form div[data-form-info='insuranceoption'] input[type='checkbox']").addClass('error');
        errors += 1;
    }

    var lshd = new LocalStorageHandler('formdata');
    lshd.setValue(obj);

    return errors;

}


function SendForm() {



    var errcnt = validateAll();
    if (errcnt == 0) {


        var formData = new FormData();

        formData.append("Name", $("#nombre").val());
        formData.append("ChannelId", $("#canal").val());
        formData.append("Contact", $("#numeroContacto").val());
        formData.append("ProvinceId", $("#provincia").val());
        formData.append("City", $("#ciudad").val());




        var checkedList = "";
        $("form div[data-form-info='insuranceoption'] input:checked").each(function () {
            if (checkedList != "") checkedList += ",";
            checkedList += $(this).attr("data-insurance");

        });


        formData.append("Companies", checkedList);


        $.ajax({
            url: '/api/register',
            processData: false,
            contentType: false,
            data: formData,
            type: 'POST',
            success: function (data) {
                if (data.Id > 0) {
                    //$('#SentFormOKModal').modal('show');
                    CleanForm();
                    window.location.href = "/Gracias";

                }
                else {
                    switch (data.Id) {

                        case -3:
                            $('#ValidationErrorModal').modal('show');
                            break;
                    }
                }


            }
        }).fail(function () {
            $('#SentErrorModal').modal('show');
        });
    }
     
}