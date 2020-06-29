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
    <title>修改论文</title>
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
        <input type="hidden" name="paperId" value="${paper.paperId}"/>
        论文名称：<input type="text" name="paperName" value="${paper.paperName}"/>
        论文数量：<input type="text" name="paperNum" value="${paper.paperNum}"/>
        论文详情：<input type="text" name="paperDetail" value="${paper.paperDetail }"/>
        <input type="button" value="提交" onclick="updatePaper()"/>
    </form>

    <script type="text/javascript">
        function updatePaper() {
            var form = document.forms[0];
            form.action = "<%=basePath %>paper/updatePaper";
            form.method = "post";
            form.submit();
        }
    </script>
</div>