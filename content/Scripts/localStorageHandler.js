
class LocalStorageHandler {

    constructor(key) {

        this.key = key;
    }


    isLocalStorageAvailable() {
        var test = 'test';
        try {
            localStorage.setItem(test, test);
            localStorage.removeItem(test);
            return true;
        } catch (e) {
            return false;
        }
    }

    setValue(obj) {

        if (this.isLocalStorageAvailable()) {
            localStorage.setItem(this.key, JSON.stringify(obj));
            return true;
        }
        else
            return true;
    }


    getValue() {

        if (this.isLocalStorageAvailable()) {
            var json = localStorage.getItem(this.key);
            if (typeof (json) != 'undefined' && json != null)
                return JSON.parse(json);
            else
                return null;
        }
        else
            return null;
    }

    deleteValue() {

        if (this.isLocalStorageAvailable()) {
            var json = localStorage.getItem(this.key);
            if (typeof (json) != 'undefined' && json != null)
                localStorage.removeItem(this.key);
        }
        else
            return null;
    }

}