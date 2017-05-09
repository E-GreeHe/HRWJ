define(['jquery','flexslider'],function($){

    return {
        init:function(){
            $('#details_header').append('<div class="header" id="header">');
            $('#header').load('../lib/header.html');
            $('#details_footer').append('<div class="footer" id="footer">');
            $('#footer').load('../lib/footer.html');

            return this;

        },
        bind:function(){
            $.post('../php/goodlist.php',function(data){
                goodlist(data);
            },'JSON');
            function goodlist(data){
                data.forEach(function(item){
                   var src = "http://localhost/myHRWJ/hrwj-Egree/src/" +item.src
                    if(item.type=='ele'){
                        // console.log(item.type)
                        $('#elelist1').append('<li><a class="loct" href="../html/details.html?id='+item.uid+'"><img src="'+src+'" /></a><p class="title">'+item.title+'</p><p class="price">￥<strong>'+item.price+'</strong>.00</p></li>');
                    };
                    if(item.type=='life'){
                        $('#life').append('<li><a class="loct" href="../html/details.html?id='+item.uid+'"><img src="'+src+'" /></a><p class="title">'+item.title+'</p><p class="price">￥<strong>'+item.price+'</strong>.00</p></li>');
                    };
                    if(item.type=='eat'){
                        $('#eatlist').append('<li><a class="loct" href="../html/details.html?id='+item.uid+'"><img src="'+src+'" /></a><p class="title">'+item.title+'</p><p class="price">￥<strong>'+item.price+'</strong>.00</p></li>');
                    };
                })
            };

            $(function(){
                // 轮播图
                $('.flexslider').flexslider({
                    directionNav: true,
                    pauseOnAction: false
                });
            });
        }

    }
})