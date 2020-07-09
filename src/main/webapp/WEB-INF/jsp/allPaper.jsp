<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/6
  Time: 16:57
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
<link rel="icon" href="../icon/favicon.ico">
    <title>Paper列表</title>
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
    <form class="navbar-form navbar-left" role="search">
    	<div class="form-group">
    	     <input type="text" class="form-control" placeholder="Search" name="name">
            <input type="hidden" class="form-control" placeholder="Search" name="userId" value="${user.userId}">
    	     <button type="submit" class="btn btn-default" onclick="SearchPaper()">搜索</button>
        </div>
    </form>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>论文名字</th>
                    <th>论文数量</th>
                    <th>论文详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="paper" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${paper.paperName}</td>
                        <td>${paper.paperNum}</td>
                        <td>${paper.paperDetail}</td>
                        <td>
                            <a href="<%=appPath%>/paper/toUpdatePaper?id=${paper.paperId}">更改</a> |
                            <a href="<%=appPath%>/paper/del/${paper.paperId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


    <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="<%=appPath%>/paper/toAddPaper/${user.userId}">新增</a>
            </div>
    </div>

    <script type="text/javascript">
            function SearchPaper() {
                var form = document.forms[0];
                if (form.elements[0].value == ""){
                    alert("搜索框内容不能为空！");
                    form.elements[0].focus();
                    return false;
                }
                form.action = "<%=basePath %>paper/SearchResult";
                form.method = "post";
                form.submit();
            }
     </script>

</div>