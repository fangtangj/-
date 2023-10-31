<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 86136
  Date: 2023/10/16
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script type="text/javascript">
        function requestCode() {
            <%--document.getElementById("captcha").src=<%""%>--%>
        }
    </script>
    <link type="text/css" rel="stylesheet"  href="../bootstrap-3.4.1/css/bootstrap.css">
</head>
<body>

<form class="form-horizontal"  action="login_action.jsp" method="post">

    <fieldset>

        <!-- Form Name -->
        <legend>网易</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="name">用户名：</label>
            <div class="col-md-4">
                <input id="name" name="name" type="text" placeholder="" class="form-control input-md" required="">

            </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="pwd">密码：</label>
            <div class="col-md-4">
                <input id="pwd" name="pwd" type="password" placeholder="" class="form-control input-md" required="">

            </div>
        </div>

        <div class="form-group row">
            <label class="col-md-4 control-label" for="txtPwd">验证码:</label>
            <div class="col-md-8">
                <a href　 ="javascript:requestCode();" title="点击刷新验证码！" >
                    <img style="width:160px;height:60px;" id="imgCode"
                alt="验证码" src="<%=request.getContextPath()%>/ImageServlet"></a>
                <div class="col-md-4">
                <input id="txtPwd" name="txtCaptcha" type="text" placeholder="请输入您的验证码" class="form-control input-md" required="">
                </div>>
            </div>
        </div>

        <!-- Multiple Checkboxes -->
        <div class="form-group">
            <%--@declare id="checkboxes"--%><label class="col-md-4 control-label" for="checkboxes"></label>
            <div class="col-md-4">
                <div class="checkbox">
                    <label for="checkboxes-0">
                        <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
                        记住用户
                    </label>
                    <label for="checkboxes-1">
                        <input type="checkbox" name="checkboxes" id="checkboxes-1" value="2">
                        记住密码
                    </label>
                </div>
            </div>
        </div>

        <!-- Button (Double) -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="button1id"></label>
            <div class="col-md-8">
                <button id="button1id" name="button1id" class="btn btn-success">登录</button>
                <button id="button2id" name="button2id" class="btn btn-danger">忘记密码</button>
                <a class="btn btn-danger" href="home.jsp" title="返回首页">返回主页</a>
            </div>
        </div>

    </fieldset>
</form>

消息提示：${msg}
</body>
</html>
