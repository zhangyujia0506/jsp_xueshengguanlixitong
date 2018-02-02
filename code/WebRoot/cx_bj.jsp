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
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
  <p><br/><br/></p>
    <div class="login">
      <h1>按班级查询</h1>
	  <form action="cx_bj_disp.jsp" method="post">
 	
        <p>请输入所在班级：<input type="text" name="BJ"></p>
        <p class="submit"><input type="submit" value="查询"></p>
	</form>
	</div>
<div class="login-help">
<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
</body>
</html>
