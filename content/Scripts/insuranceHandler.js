var iHandler;
$(function () {
    let iHandler = new InsuranceHandler();
    for (let i = 0; i < iHandler.insurances.length; i++) {
        // //Binding DOM->array (menu) 
        $(".bodyIndex div.modal button[data-insurance='" + iHandler.insurances[i].getHtmlId() + "']").click(function (event) {



            $(".ofrecimientoXMarca div[data-insurance='" + iHandler.insurances[i].getHtmlId() + "'] button[data-insurance='" + iHandler.insurances[i].getHtmlId() + "']").click();
            
            

            
        });


        //Binding DOM->array (button) 
        $(".ofrecimientoXMarca div[data-insurance='" + iHandler.insurances[i].getHtmlId() + "'] button[data-insurance='" + iHandler.insurances[i].getHtmlId() + "']").click(function (event) {
            var targetClicked = $(event.target);
            var searchString = targetClicked.attr("data-insurance");
            for (let j = 0; j < iHandler.insurances.length; j++) {
                if (iHandler.insurances[j].getHtmlId() == searchString)
                    iHandler.insurances[j].setIsActive(true);
            }
            event.stopPropagation();
            iHandler.doRender();
        });
        //Binding DOM->array (checkbox) 
        $("form .form-check[data-insurance='" + iHandler.insurances[i].getHtmlId() + "'] input[type='checkbox']").click(function (event) {
            var targetClicked = $(event.target);
            var searchString = targetClicked.attr("data-insurance");
            for (let j = 0; j < iHandler.insurances.length; j++) {
                if (iHandler.insurances[j].getHtmlId() == searchString)
                    iHandler.insurances[j].setIsActive(targetClicked.is(':checked'));
            }
            event.stopPropagation();
            iHandler.doRender();
        });
        //Binding DOM->array (cards)
        $(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + iHandler.insurances[i].getHtmlId() + "'] img[data-insurance='" + iHandler.insurances[i].getHtmlId() + "']").click(function (event) {

            var showelement = !$(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + iHandler.insurances[i].getHtmlId() + "'] img.tildeOk").is(':visible');
            var targetClicked = $(event.target);
            var searchString = targetClicked.attr("data-insurance");
            for (let j = 0; j < iHandler.insurances.length; j++) {
                if (iHandler.insurances[j].getHtmlId() == searchString)
                    iHandler.insurances[j].setIsActive(showelement);
            }
            event.stopPropagation();
            iHandler.doRender();
        });
    }
});



class Insurance {
    constructor(htmlId) {
        /*Referencia al nombre del data-insurance en DOM*/
        this.htmlId = htmlId;
        /*Indica si el seguro se encuentra activo*/
        this.isActive = false;
    }

    getHtmlId() {
        return this.htmlId;
    }

    getIsActive() {
        return this.isActive;
    }

    setIsActive(isActive) {
        this.isActive = isActive;
    }
}



class InsuranceHandler {



    /*Establece array de seguros*/
    constructor() {

        var lshg = new LocalStorageHandler('insurances');
        var savedInsurances = lshg.getValue();


        this.insurances = [new Insurance('CNP'),
        new Insurance('SANCOR'),
        new Insurance('TRIUNFO'),
        new Insurance('RUS'),
        new Insurance('LASEGUNDA')];

        if (savedInsurances != null) {
            for (let i = 0; i < this.insurances.length; i++) {
                var k = this.insurances[i].getHtmlId();
                for (let j = 0; j < savedInsurances.length; j++) {
                    if (k == savedInsurances[j].htmlId)
                        this.insurances[i].setIsActive(savedInsurances[j].isActive);

                }

            }

        }
        this.doRender();
    }

    doRender() {

        var lshs = new LocalStorageHandler('insurances');
        lshs.setValue(this.insurances);

        this.setDom();

        var cnyData = this.getSelectedCompanies();

        if (cnyData != '') {

            $.ajax({
                url: '/api/company/totalprice/' + cnyData,
                processData: false,
                contentType: false,
                data: null,
                type: 'GET',
                success: function (data) {

                    $(".simuladorSeguros .cardSimuladorResultadoP div p").html('$ ' + data.toString());

                }
            }).fail(function () {
                //showErrorbar('Ha ocurrido un error, al intentar grabar!.');
            });
        } else
            $(".simuladorSeguros .cardSimuladorResultadoP div p").html('$ 0');



    }


    /*Binding array -> DOM */
    setDom() {
        for (let i = 0; i < this.insurances.length; i++) {
            if (this.insurances[i].getIsActive()) {
                $(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + this.insurances[i].getHtmlId() + "'] img.tildeOk").fadeIn(1000);
                $(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + this.insurances[i].getHtmlId() + "']").addClass('click');

            }
            else {
                $(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + this.insurances[i].getHtmlId() + "'] img.tildeOk").hide();
                $(".simuladorSeguros .grupoCardsSimuladorSeguros div[data-insurance='" + this.insurances[i].getHtmlId() + "']").removeClass('click');

            }
           
            $("form .form-check[data-insurance='" + this.insurances[i].getHtmlId() + "'] input[type='checkbox']").prop('checked', this.insurances[i].getIsActive());
        }

    }


    getSelectedCompanies() {
        var cnyData = '';
        for (let i = 0; i < this.insurances.length; i++) {
            if (this.insurances[i].getIsActive()) {
                var cnyCode = this.insurances[i].getHtmlId();
                if (cnyData != '') cnyData += ',';
                cnyData += cnyCode;
            }
        }
        return cnyData;

    }

}
