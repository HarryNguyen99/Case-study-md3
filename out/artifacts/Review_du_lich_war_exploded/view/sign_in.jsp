<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 5/16/20
  Time: 1:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In Page</title>
</head>
<body>
    <div id="page">
        <h1>Trang Đăng Nhập</h1>
        <form method="post">
            <label>Username:</label>
            <input type="text" name="username"/>
            <br/><br/>
            <label>Password:</label>
            <input type="password" name="password"/>
            <br/><br/>
            <input type="submit" name="submit" value="Đăng Nhập"/>
            <button><a href="/login?action=signup">Đăng Ký</a></button>
        </form>
    </div>
</body>
</html>
