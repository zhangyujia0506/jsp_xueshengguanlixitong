<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎使用学生学籍信息管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">
	
</head>
<body>
  <p><br/><br/></p>
    <div class="login">
      <h1>用户登录</h1>
	<form action="user/loginServlet.servlet" name="login" >
 		<p><input type="text" name="username" placeholder="工号/用户名"></p>
        <p><input type="password" name="password" placeholder="密码"></p>
        <p class="submit"><input type="submit" value="登录"></p>
	</form>
	</div>
<div class="login-help">
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
</body>
</html>
