requirejs.config({
    baseUrl:"../",
    shim:{
        'idcode': ['jquery'],
        'colorbox': ['jquery']
    },
    paths:{
        'jquery':"lib/jquery-3.1.1",
        'login':"js/login",
        'idcode':"lib/jquery.idcode",
    }
})
require(["jquery","login","idcode",],function($,login,idcode){
    login.init();
});