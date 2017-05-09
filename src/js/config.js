
// require 第一个参数 数组  元素为加载模块的地址
//第二个参数 回调函数  为模块加载完毕以后的处理
// require(['js/slide/slide.js'],function(slide){
//     console.log(slide);

// 对模块化加载进行基本设置
requirejs.config({
    baseUrl:"../",
    //设置依赖
    shim:{
        'flexslider': ['jquery'],
        'timeCutdown': ['jquery']
        // 'carousel': ['jquery']
    },

    //加载路径  和加载对象   //省略后缀
    paths:{
        'jquery':"lib/jquery-3.1.1",
        'index':"js/index",
        'flexslider':'lib/jquery.flexslider-min',
        'timeCutdown':"lib/timeCutdown"
        // 'carousel':'js/carousel'
    }

    //加载新的模块
})


//require 属于按需加载

<<<<<<< 56bc83a039660f5862988484f2843c93223dce77
require(["jquery","index","flexslider","timeCutdown"],function($,index,flexslider,timeCutdown){
=======
require(["jquery","index"],function($,index){
>>>>>>> my web project
    // console.log(this)
    index.init();
   // footer.init();
    // var test = new Test();pi
    // var path = location.pathname; //进行路由设置

    // console.log(path);
    // if(path=="/1611/day30/app/page/"){
    //     page.init()
    // }else if(path=="/1611/day30/app/index/"){
    //     index.init()
    // }else{
    //     index.init()
    // }
    //如果想要添加新的页面

    //1 建一个文件夹 放入index.html
    //2 建一个新的模块 在模块里面对页面进行设置
    //3 在入口js 设置访问路由
});



//mvc m =model v = view 页面视图  c=control 控制器