<%@ page import="java.io.PrintWriter" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录验证处理页面</title>
</head>
<body>
<%
  String name=request.getParameter("name");
  String pwd =request.getParameter("pwd");
  if (name.equals("xd")&& pwd.equals("123456") ){

    request.getRequestDispatcher("home.jsp").forward(request,response);
    PrintWriter printWriter=response.getWriter();
    printWriter.write("登录成功");
  }else {
    out.print("<script>alert('账号密码错误');window.location='login.jsp';</script>");
    request.setAttribute("msg","账号密码错误");
    //request.getRequestDispatcher("login.jsp");

  }

%>
</body>
</html>
