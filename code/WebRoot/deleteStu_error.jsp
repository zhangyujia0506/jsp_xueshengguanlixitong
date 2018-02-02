<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>提示</title>
    
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
      <h1>提示</h1>
	<p align=center>删除学生信息失败！</p>
	<br />
  <a href="main.jsp"><p align=center>返回主页面</p> </a>
  </div>
 <div class="login-help">

        <br/>
         <p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
        </div>
  </body>
  
</html>
