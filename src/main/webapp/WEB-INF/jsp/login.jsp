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

    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label for="firstname" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="firstname"
                       placeholder="请输入用户名" name="sysName">
            </div>
        </div>
        <div class="form-group">
            <label for="lastname" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="lastname"
                       placeholder="请输入密码" name="passWord">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" onclick="login()">登录</button>
            </div>
        </div>
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
