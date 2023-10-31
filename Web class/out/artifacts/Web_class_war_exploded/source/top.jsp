<%--
  Created by IntelliJ IDEA.
  User: 86136
  Date: 2023/10/19
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>页头</title>
    <link type="text/css" rel="stylesheet'"
          href="../bootstrap-3.4.1/css/bootstrap.css">
    <style type="text/css">
        .navbar-brand  .logo-img{
            position: relative;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            height: 50px;
            width: 150px;
        }

    </style>
</head>
<body>

<%!String[] navStr ={"首页","新闻资讯","产品方案","合作伙伴"};%>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default navbar-light" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-top">
                        <span class="sr-only">Toggle navigation</span><span
                            class="icon-bar"></span><span class="icon-bar"></span><span
                            class="icon-bar"></span>
                    </button>
                    <a href="#" class="navbar-brand">
                       <img src="../img/logo_20231023_uugai.com_1698027677268.png" class="logo-img" style="display: inline" alt="Company logo">
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse-top">
                    <ul class="nav navbar-nav">
                        <%
                            for (String s : navStr){
                        %>
                        <li> <a class="active" href="#"><%=s%></a> </li>
                        <%
                        }

                        %>
                    </ul>
                    <ul class="navbar-nav navbar-right">
                        <li><a href="./login.jsp">登录</a></li>
                        <li class="divider"></li>
                        <li><a href="./register.jsp">注册</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
</body>
</html>