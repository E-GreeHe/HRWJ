
// require 第一个参数 数组  元素为加载模块的地址
//第二个参数 回调函数  为模块加载完毕以后的处理
// require(['js/slide/slide.js'],function(slide){
//     console.log(slide);

// 对模块化加载进行基本设置
requirejs.config({
    baseUrl:"../",
    shim:{
        'details': ['jquery'],
        'fangdajing': ['jquery'],
        'colorbox': ['jquery']
    },
    paths:{
        'jquery':"lib/jquery-3.1.1",
        'details':"js/details",
        'fangdajing':"lib/fangdajing",
        'colorbox':"lib/jquery.colorbox-min"
    }
})
require(["jquery","details","fangdajing","colorbox"],function($,details,fangdajing,colorbox){
    details.init();
    details.bind();
});