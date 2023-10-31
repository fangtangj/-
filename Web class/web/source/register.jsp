
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>系统注册</title>
  <link href="img/fav.ico" rel="icon" type="image/x-icon">
  <link type="text/css" rel="stylesheet"
        href="../bootstrap-3.4.1/css/bootstrap.css">
  <style type="text/css" rel="stylesheet">
    .container-fluid {
      margin-top: 50px;
      padding: 20px;
    }

    .frm {
      margin: 20px auto;
      max-width: 600px;
    }

  </style>
</head>
<body>
<div class="container-fluid">
  <div class="row text-center">
    <img alt="140x140" src="../img/logo_20231023_uugai.com_1698027677268.png" class="icon" />
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
      <form class="form-vertical frm" action="" method="post">

        <!-- 用户名 | Text input-->
        <div class="form-group row">
          <label class="col-md-4 col-form-label" for="txtName">用户名</label>
          <div class="col-md-8">
            <input id="txtName" name="txtName" type="text"
                   placeholder="数字、字母构成，8位以上" class="form-control input-md"
                   required="">

          </div>
        </div>

        <!-- 密码 | Passwrod input-->
        <div class="form-group row">
          <label class="col-md-4 col-form-label" for="txtPwd">密码</label>
          <div class="col-md-8">
            <input id="txtPwd" name="txtPwd" type="password"
                   placeholder="数字、字母构成，8位以上" class="form-control input-md"
                   required="">

          </div>
        </div>

        <!-- 再次输入密码 | Passwrod input-->
        <div class="form-group row">
          <label class="col-md-4 col-form-label" for="txtPwdAgain">再次输入密码</label>
          <div class="col-md-8">
            <input id="txtPwdAgain" name="txtPwdAgain" type="password"
                   placeholder="两次输入的密码保持一致" class="form-control input-md"
                   required="">

          </div>
        </div>

        <!-- 性别 | Multiple Radios (inline)-->
        <div class="form-group row">
          <label class="col-md-4 col-form-label">性别</label>
          <div class="col-md-8">
            <label class="radio-inline" for="gender-0"> <input
                    type="radio" name="gender" id="gender-0" value="1"
                    checked="checked"> 男
            </label> <label class="radio-inline" for="gender-1"> <input
                  type="radio" name="gender" id="gender-1" value="0"> 女
          </label>
          </div>
        </div>

        <!-- 所在部门 | Select Basic -->
        <div class="form-group row">
          <label class="col-md-4 col-form-label" for="selectDpt">所在部门</label>
          <div class="col-md-8">
            <select id="selectDpt" name="selectDpt" class="form-control">
              <option value="1">行政部</option>
              <option value="2">财务部</option>
              <option value="3">销售部</option>
              <option value="4">技术部</option>
            </select>
          </div>
        </div>

        <!-- 担任职位 | Text input-->
        <div class="form-group row">
          <label class="col-md-4 col-form-label" for="txtPosition">担任职位</label>
          <div class="col-md-8">
            <input id="txtPosition" name="txtPosition" type="text"
                   placeholder="您的岗位名称" class="form-control input-md">

          </div>
        </div>

        <!--  | Button (Double) -->
        <div class="form-group row text-center">
          <div class="col-md-6">
            <input type="submit" value="提交注册" title="提交注册"
                   class="btn btn-primary">
          </div>
          <div class="col-md-6">
            <a class="btn btn-danger" href="login.jsp" title="已有帐号，返回登录">返回登录</a>
          </div>
        </div>

      </form>
    </div>
  </div>
</div>
</body>
</html>
