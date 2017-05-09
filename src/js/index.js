define(['jquery','flexslider','timeCutdown'],function($){

    return {
        // 加载页面
        init:function(){
            $('#index_header').append('<div class="header" id="header">');
            $('#header').load('../lib/header.html');
            $('#index_sale').append('<div class="shopSpree" id="shopSpree">');
            $('#shopSpree').load('../lib/sale.html');
            $('#index_footer').append('<div class="footer" id="footer">');
            $('#footer').load('../lib/footer.html');

            $(function(){
                // 抢购
                $.post("../php/sale.php",function(data){
                    // console.log(data);
                    // 调用方法
                    sale(data);
                },"json");
                // 限时抢购 商品
                function sale(data){
                    // $('#shop_List');
                    // console.log($('#shop_List'))
                    // $('#shop_List').append('<li>');
                    // 生成节点
                    // console.log(data);
                    // var imgurl = "http://localhost/myHRWJ/hrwj-Egree/src/"+
                    for(var i=0;i<data.length;i++){
                        var src = "http://localhost/myHRWJ/hrwj-Egree/src/"+data[i].src;
                        var contryimg = "http://localhost/myHRWJ/hrwj-Egree/src/"+data[i].countryurl;
                        var contry = data[i].contry;
                        var title = data[i].title;
                        var price = data[i].price;
                        var costPrice = data[i].costPrice;
                        var pricedot = data[i].pricedot;
                        var introduce = data[i].introduce;
                        // $('#shop_List').append('<li></li>')
                        var $saleli = $('#shop_List').children('li')
                        if($saleli.length<5){
                        $('#shop_List').append("<li><a>\
                            <img src="+src+" />\
                            <div class='jx_box'>\
                            <i><img src="+contryimg+" /></i>\
                            <span>"+contry+"</span></div></a>\
                            <div class='shop_name'><a><span>"+title+"</span></a></div>\
                            <div class='price'><span>"+price+"</span><em>"+pricedot+"</em><s>"+costPrice+"</s></div>\
                            <div class='info' id='shop_coutInfo'><a>"+introduce+"<a/></div></li>");
                        // console.log(introduce);
                        }
                    }
                    var $saleli = $('#shop_List').children('li')
                    // 取到每次最新数据 多余的删除
                    if($saleli.length>4){
                        $saleli.eq(0).remove();
                    }
                    // console.log($saleli.length)

                    // 轮播图
                    $('.flexslider').flexslider({
                        directionNav: true,
                        pauseOnAction: false
                    });

                    // 倒计时
                    $("#timeOut").fnTimeCountDown("2017/07/07 07:07:07");
                };

            })

            // 人气 商品
            $.post("../php/popular.php",function(data){
                // console.log(data);
                // 调用方法
                // console.log(data)
                popular(data);
            },"json");
            function popular(data){
                data.forEach(function(item){
                    var src = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.src
                    var tagimg = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.tagimg;
                    var countryurl = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.countryurl
                    // console.log(item);
                    $('#recommend').append("<li><a><img src="+src+" /></a>\
                        <div class='tag'><a><img src="+tagimg+" /></a></div>\
                        <div class='fl_buttom'><div class='jx_box'><i><img src="+countryurl+" /></i>\
                        <span>"+item.country+"</span></div>\
                        <div class='shop_name'><a><span>"+item.title+"</span></a></div>\
                        <div class='intro'><p><a>"+item.introduce+"</a></p></div>\
                        <div class='price'><span><strong>"+item.price+"</strong><s>"+item.costPrice+"</s></span></div></div></li>");

                });
                var $popular = $('#recommend').children('li');
                // 取到每次最新数据 多余的删除
                if($popular.length>5){
                    $popular.eq(0).remove();
                }
            };
            // 新收好礼 商品
            $.post("../php/newgift.php",function(data){
                // 调用方法
                newgift(data);
            },"json");
            function newgift(data){
                data.forEach(function(item){
                    var src = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.src
                    var tagimg = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.tagimg;
                    var countryurl = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.countryurl;
                    $('#newshop').append("<li class='clear'><div class='tag'><a><img src="+tagimg+" /></a></div>\
                        <div class='nsLeft'><img src="+src+" /></div>\
                        <div class='nsright'>\
                            <div class='jx_box'>\
                                <i><img src="+countryurl+" /></i>\
                                <span>"+item.country+"</span>\
                                <p class='title'>"+item.title+"</p>\
                                <p class='intro'>"+item.introduce+"</p>\
                                <p class='price'>￥<strong>"+item.price+"</strong>.00</p>\
                                <button>加入购物车</button>\
                            </div>\
                        </div></li>");
                })
            }

        },
        // 页面方法
        bind:function(){
            
        }

    }

}) 