define(['jquery','idcode'],function($){
    return {
        init:function(){
            $(function(){
                // 点击按钮 判断如果用户名 密码 电话 验证码格式正确 勾选框被选中提交到登陆页面 并将注册信息存入coolie

                // $.idcode.setCode();// 验证码  页面一开始能有验证码

                var $user = $('#username');// 用户名
                var $telphone = $('#telphone');//电话
                var $psw = $('#psw');//密码
                var $respsw = $('#respsw');//确认密码
                var $inputCode = $('#inputCode');
                var $codeClick = $('#codeClick');//验证码切换
                $user.focus();//一开始聚焦
                var b1,b2,b3,b4,b5;
                // 用户名
                $user.on('blur',function(){
                    // 4-20位 字母数字下划线
                    if( /^[a-zA-Z_-]\w{3,20}$/.test($(this).val()) ){
                        $(this).siblings('label').children('span').html('');
                        b1 = true;
                    }else{
                        $(this).siblings('label').children('span').html('用户名格式不对').css('color','#e14041');
                        b1 = false;
                    }
                });
                // 电话
                $telphone.on('blur',function(){
                    if( (/1[34578]\d{9}/g).test( $(this).val() ) ){
                        $(this).siblings('label').children('span').html('');
                        b2 = true;
                    }else{
                        $(this).siblings('label').children('span').html('请填写正确的手机号').css('color','#e14041');
                        b2 = false;
                    };
                });
                // 密码
                $psw.on('blur',function(){
                    if( /^[0-9a-zA-Z_-]\w{5,20}$/.test( $(this).val() ) ){
                        $(this).siblings('label').children('span').html('');
                        b3 = true;
                    }else{
                        $(this).siblings('label').children('span').html('6到20位字符').css('color','#e14041');
                        b3 = false;
                    };
                });
                // 确认密码
                $respsw.on('keyup',function(){
                    if($(this).val() == $psw.val()){
                        $(this).siblings('label').children('span').html('');
                        b4 = true;
                    }else{
                        $(this).siblings('label').children('span').html('两次输入密码不一致').css('color','#e14041');
                        b4 = false;
                    };
                });
                // 验证码切换
                $codeClick.on('click',function(){
                    $.idcode.setCode();
                })
                // 验证码判断
                $inputCode.on('blur',function(){
                    // console.log($('#idcode').html())
                    if($(this).val() == $('#idcode').html()){
                        $('.code_main').children('label').children('span').html('');
                        b5 = true;
                    }else{
                        $('.code_main').children('label').children('span').html('请输入正确的验证码').css('color','#e14041');
                        b5 = false;
                    }
                });
                // 点击按钮的时候  将用户信息存入数据库
                $("#btn").on('click',function(){
                    if( b1 && b2 && b3 && b4 && b5 ){
                        // 判断勾选
                        if($('#chekBox').is(':checked')){
                            var _username = $user.val();
                            var _psw = $psw.val();
                            var _tel = $telphone.val();

                            $.post("../php/user.php",{
                                "username":_username,
                                "password":_psw,
                                "tel":_tel
                            },
                            function(data){
                                if(data=="注册成功"){
                                    $('.mainUser').css('display','none');
                                    $('.regOK').css('display','block');
                                    setTimeout(function(){
                                        location.href = "login.html";
                                    },1000)
                                }else if(data=="用户已经注册"){
                                    $user.siblings('label').children('span').html('用户已经注册').css('color','#e14041');
                                }else{
                                    $user.siblings('label').children('span').html('注册失败,刷新后从试试。').css('color','#e14041');
                                }
                            });
                        }
                    }
                })
            });
        }
    }
})