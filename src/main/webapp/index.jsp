<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
            border-radius: 4px;
        }


        .box{
                 width:500px,
                 margin: 0 auto;
        }

    </style>
    <meta name="description" content="Bootstrap Stacked or vertical Tab Based Navigation Example">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="page-header">
    <h1>论文管理系统
        <small>杨林彬（杉水）</small>
    </h1>
</div>

<div class="container">
<div class="box">
<a class='btn btn-success' href="${path }/paper/allPaper">去管理</a>
</div>
</div>
</body>
</html>