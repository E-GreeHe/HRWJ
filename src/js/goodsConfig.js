requirejs.config({
    baseUrl:"../",
    shim:{
        'flexslider': ['jquery']
    },
    paths:{
        'jquery':"lib/jquery-3.1.1",
        'goodlist':"js/goodlist",
        'flexslider':'lib/jquery.flexslider-min'
        
    }
})
require(["jquery","goodlist","flexslider"],function($,goodlist,flexslider){
    goodlist.init();
    goodlist.bind();
});