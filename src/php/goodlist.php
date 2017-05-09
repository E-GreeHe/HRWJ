<?php
    // 获取数据库打折商品信息
    $con = new mysqli('127.0.0.1','root','','hrwj');
     // 查询表
    $sql = 'select * from goodlist';
    $res = $con->query('set names utf8');
    // 查询数据库获取数据
    $res = $con->query($sql);
    // 使用查询结果集
    $row = $res->fetch_all(MYSQLI_ASSOC);
    echo json_encode($row,JSON_UNESCAPED_UNICODE);
    // 关闭数据库
    $con->close();
?>