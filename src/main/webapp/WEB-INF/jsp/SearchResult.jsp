<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/4/6
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
<link rel="icon" href="../icon/favicon.ico">
    <title>Paper索引结果</title>
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
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>论文编号</th>
                    <th>论文名字</th>
                    <th>论文数量</th>
                    <th>论文详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${selectedPaper.paperId}</td>
                        <td>${selectedPaper.paperName}</td>
                        <td>${selectedPaper.paperNum}</td>
                        <td>${selectedPaper.paperDetail}</td>
                        <td>
                            <a href="<%=appPath%>/paper/toUpdatePaper?id=${selectedPaper.paperId}">更改</a> |
                            <a href="<%=appPath%>/paper/del/${selectedPaper.paperId}">删除</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>