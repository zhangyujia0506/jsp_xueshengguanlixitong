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
 
     <p><br/><br/></p>
    <div class="login">
   
      <h1>请选择</h1>
     <p align=center><a href="cx_xh.jsp">按学号查询</a></p><br/>
     <p align=center><a href="cx_bj.jsp">按班级查询</a></p><br>
      <p align=center><a href="cx_xm.jsp">按姓名查询</a></p><br>
         <p align=center><a href="main.jsp">返回主页面</a></p><br>
    </div>
   <div class="login-help">
   <br/>
         <p align=center>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
      </div>


</body>
</html>
