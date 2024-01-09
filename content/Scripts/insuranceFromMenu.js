function addItemToLocalStorageAndGoHome(htmlId, goHome) {
    var lshg = new LocalStorageHandler('insurances');
    var savedInsurances = lshg.getValue();
    for (let j = 0; j < savedInsurances.length; j++) {
        if (htmlId == savedInsurances[j].htmlId)
            savedInsurances[j].isActive = true;
        lshg.setValue(savedInsurances);

    }
    if (goHome)
        window.location.href = "/Inicio#irForm";
}