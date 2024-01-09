$(function () {

    $("#vidaModal button[data-insurance='CNP']").click(function () {
        addItemToLocalStorageAndGoHome('CNP', true);
    });

    $("#tuvidaModal button[data-insurance='SANCOR']").click(function () {
        addItemToLocalStorageAndGoHome('SANCOR', true);
    });

    $("#bienestarModal button[data-insurance='TRIUNFO']").click(function () {
        addItemToLocalStorageAndGoHome('TRIUNFO', true);
    });
    $("#pertenenciasModal button[data-insurance='LASEGUNDA']").click(function () {
        addItemToLocalStorageAndGoHome('LASEGUNDA', true);
    });

    $("#lugarModal button[data-insurance='RUS']").click(function () {
        addItemToLocalStorageAndGoHome('RUS', true);
    });
});