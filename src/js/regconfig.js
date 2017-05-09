requirejs.config({
    baseUrl:"../",
    shim:{
        'idcode': ['jquery']
    },
    paths:{
        'jquery':"lib/jquery-3.1.1",
        'reg':"js/reg",
        'idcode':"lib/jquery.idcode",
    }
})
require(["jquery","reg","idcode",],function($,reg,idcode){
    reg.init();
});