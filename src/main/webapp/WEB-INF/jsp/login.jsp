<%--
  Created by IntelliJ IDEA.
  User: shanshui
  Date: 2020/7/8
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String appPath = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + appPath + "/";
%>
<html>
<head>
    　　<meta charset="utf-8">
    　　<title>登录页面</title>
        <link rel="icon" href="../icon/favicon.ico">
    　　<script type="text/javascript" src="../js/jquery-3.5.1.min.js"></script>
    　　<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    　　<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <div class="page-header">
        <h1>论文管理系统
            <small>杨林彬（杉水）</small>
        </h1>
    </div>

    <form action="" name="userForm">
        用户名：<input type="text" name="sysName"><br><br><br>
        密&nbsp&nbsp码：<input type="password" name="passWord"><br><br><br>
        <input type="button" value="登录" onclick="login()">
    </form>

    <script type="text/javascript">
        function login() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/login";
            form.method = "post";
            form.submit();
        }
    </script>
</div>



</body>
</html>
