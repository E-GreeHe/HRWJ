<?php

       $name = $_POST['username'];
       $psw = $_POST['password'];
       $tel = $_POST['tel'];


       //连接数据库操作
       $con = new mysqli('127.0.0.1','root','','hrwj');
 
       //获取当前所有用户的信息
       $sql = 'select * from user';
       $res = $con->query($sql);
       // print_r($res);
       
       $bool = true;
       
       if($res->num_rows>0){
             while($row = $res->fetch_assoc()){
                 if($row['username'] == $name){
                       $bool = false;
                 }
             }
       }
       
       
       if($bool){
            // $sql = 'insert into dome (username,password,tel) values("'.$name.'","'.$psw.'","'.$tel.'")';
            $sql = "insert into user(username,password,tel) values ('$name','$psw','$tel');"; 
            if($con->query($sql)){
                  echo "注册成功";
            }else{
                  echo "注册失败";
            }
       }else{
           echo "用户已经注册";
       }
       // 关闭数据库
       // $con->close();
?>