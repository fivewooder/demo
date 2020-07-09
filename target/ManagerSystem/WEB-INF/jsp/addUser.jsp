<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <link rel="icon" href="../icon/favicon.ico">
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>论文管理系统
            <small>杨林彬（杉水）</small>
        </h1>
    </div>
    <form action="" name="userForm">
        用户名：<input type="text" name="userName"><br><br><br>
        系统名：<input type="text" name="sysName"><br><br><br>
        密&nbsp&nbsp码：<input type="password" name="passWord"><br><br><br>
        <input type="button" value="添加" onclick="addUser()">
    </form>

    <script type="text/javascript">
        function addUser() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/addUser";
            form.method = "post";
            form.submit();
        }
    </script>
</div>