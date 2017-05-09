define(["jquery","fangdajing","colorbox"],function($){

    return {
        // 加载页面
        init:function(){
            $('#index_header').append('<div class="header" id="header">');
            $('#header').load('../lib/header.html');
            $('#index_footer').append('<div class="footer" id="footer">');
            $('#footer').load('../lib/footer.html');

            
            function getId(search) {
                if(search.length > 0 && search[0] == "?") {
        
                    var str = search.substring(1);
        
                    var arr = str.split("&");
        
                    var newArr = [];
        
                    for(var i = 0; i < arr.length; i++) {
        
                        var arr2 = arr[i].split("=");
                        if(arr2.length >= 2) {
                            newArr.push(arr2[1]);
                        }
                    }
                    return newArr;
                } else {
                    return [];
                }
            };
            var id = getId(location.search)
            // console.log( getArrayFromSearch(location.search) )
            $.post('../php/goodlist.php',function(data){
                insertInfo(data)
            },'JSON');
            // console.log($('.con-fangDaIMg').children('img'))
            function insertInfo(data){
                var $smallimg1 = $('.con-FangDa-ImgList').children('li').eq(0).children('img'),
                    $smallimg2 = $('.con-FangDa-ImgList').children('li').eq(1).children('img'),
                    $smallimg3 = $('.con-FangDa-ImgList').children('li').eq(2).children('img'),
                    $smallimg4 = $('.con-FangDa-ImgList').children('li').eq(3).children('img'),
                    $smallimg5 = $('.con-FangDa-ImgList').children('li').eq(4).children('img');
                var goodsimg = "http://localhost/myHRWJ/hrwj-Egree/src/";
                data.forEach(function(item,idx){
                    if(id == item.uid){
                        var smallimg = item.srcSimg;
                        var arrlist = smallimg.split('?');

                        
                        var bigimg = item.srcBimg;
                        var arrlistbig = bigimg.split('?')

                        $('.protitle').html(item.title);
                        $('#price').children('span').children('strong').html(item.price);
                        $('.con-fangDaIMg').children('img').attr('src',goodsimg+arrlist[0]);
                        $('.magnifyingShow').children('img').attr('src',goodsimg+arrlist[0]);

                        $smallimg1.attr( {"src":goodsimg+arrlist[0],"data-bigimg":goodsimg+arrlistbig[0]} );
                        $smallimg2.attr( {"src":goodsimg+arrlist[1],"data-bigimg":goodsimg+arrlistbig[1]} );
                        $smallimg3.attr( {"src":goodsimg+arrlist[2],"data-bigimg":goodsimg+arrlistbig[2]} );
                        $smallimg4.attr( {"src":goodsimg+arrlist[3],"data-bigimg":goodsimg+arrlistbig[3]} );
                        $smallimg5.attr( {"src":goodsimg+arrlist[4],"data-bigimg":goodsimg+arrlistbig[4]} );
                        console.log(item.title)
                    }
                    // console.log(item.uid)
                });
            };


            

        },
        bind:function(){
            $(function(){
                $('#btnBuyshop').on('click',function(){
                    // console.log($('#car'))
                    $('#car').css("display","block");
                });
                $('#close').on('click',function(){
                    $('#car').css("display","none");
                });
            })
        }

    }

}) 