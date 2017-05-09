define(['jquery','idcode'],function($){
    return {
        init:function(){
            // $(function(){
                var $user = $('#username');// 用户名
                var $psw = $('#password');//密码
                var $inputCode = $('#inputCode');
                var $codeClick = $('#codeClick');//验证码切换
                var bool;
                // 验证码切换
                $codeClick.on('click',function(){
                    $.idcode.setCode();
                })
                // 验证码判断
                $inputCode.on('blur',function(){
                    // console.log($('#idcode').html())
                    if($(this).val() == $('#idcode').html()){
                        $('.code_main').children('label').children('span').html('');
                        bool = true;
                    }else{
                        $('.code_main').children('label').children('span').html('请输入正确的验证码').css('color','#e14041');
                        bool = false;
                    }
                });
                $('#btn').on('click',function(){
                    if(bool){
                        var _username = $user.val();
                        var _psw = $psw.val();
                        $.post("../php/login.php",{
                            "username":_username,
                            "password":_psw
                        },function(data){
                            console.log(data);
                            setTimeout(function(){
                                window.location = 'index.html'
                            },500);
                        });
                    }
                    
                });  
            // })
        },
        bind:function(){

        }
    }
})