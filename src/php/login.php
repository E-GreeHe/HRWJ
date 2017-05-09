<?php 
        //数据校验
        //获取当前的用户名和密码
        $name = $_POST['username'];
        $psw = $_POST['password'];

        //1获取数据库中的用户信息
        $con = new mysqli('127.0.0.1','root','','hrwj');
        // 查询表
        $sql = 'select * from user';
        $res = $con->query($sql);
        $bool = true;
        if($res->num_rows>0){
            //fetch_assoc() 执行第一次返回 第一条数据 执行第二次的时候返回第二数据
            // $row 当前获取到的每一行数据
            while ( $row = $res->fetch_assoc() ) {
                //2 判断当前登录的用户是否已注册
                if($row['username'] == $name&&$row['password']==$psw){
                    $bool=false;
                }
            }
        }
        if($bool){
            if($con->query($sql)){
                echo "登录成功";
            }else{
                echo "登录失败";
            }
        }else{
            echo "用户登录成功";
        }
        // 关闭数据库
        $con->close();

    //2 判断当前登录的用户是否已注册
    // if($row['username'] == $name&&$row['password']==$psw){
    //     echo "登录成功";
    // }else{
    //     echo "登录失败,请输入正确的用户名或密码";
    // }
 ?>