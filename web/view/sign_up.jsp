<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 5/15/20
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="../css/style.css" type="text/css">
</head>
<body>
    <div id="page">
        <h1>Trang Đăng Kí</h1>
        <form method="post">
            <label>Username: </label>
            <input type="text" name="username"/>
            <br/><br/>
            <label>Password: </label>
            <input type="password" name="password"/>
            <br/><br/>
            <label>Họ và Tên: </label>
            <input type="text" name="fullname"/>
            <br/><br/>
            <label>Email: </label>
            <input type="text" name="email"/>
            <br/><br/>
            <label>Địa Chỉ: </label>
            <input type="text" name="address"/>
            <br/><br/>
            <label>Số Điện Thoại: </label>
            <input type="text" name="phonenumber"/>
            <br/><br/>
            <input type="submit" name="submit" value="Đăng Kí"/>
        </form>
    </div>
<script src="../js/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
</body>
</html>
