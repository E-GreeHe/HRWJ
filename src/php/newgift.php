<?php
    // 新收礼物
    $con = new mysqli('127.0.0.1','root','','hrwj');
     // 查询表
    $sql = 'select * from newgiftList';
    $res = $con->query('set names utf8');
    // 查询数据库获取数据
    $res = $con->query($sql);
    // 使用查询结果集
    $row = $res->fetch_all(MYSQLI_ASSOC);
    echo json_encode($row,JSON_UNESCAPED_UNICODE);
    // 关闭数据库
    $con->close();
?>