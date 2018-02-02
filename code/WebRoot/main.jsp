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
  <%  
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
     "yyyy-MM-dd HH:mm:ss");    
   java.util.Date currentTime = new java.util.Date();    
   String time = simpleDateFormat.format(currentTime).toString();  
    
     %>  
     <p><br/><br/></p>
    <div class="login">
   
      <h1>请选择</h1>
     <p align=center><a href="student/queryAllStuServlet.servlet?osid=query">查看所有学生信息</a></p><br>
     <p align=center><a href="cx_main.jsp">查询学生信息</a></p><br>
     <p align=center><a href="student/queryAllStuServlet.servlet?osid=modify">修改学生信息</a></p><br>
     <p align=center><a href="inputStuInfo.jsp">添加学生信息</a></p><br/>
     <p align=center><a href="student/queryAllStuServlet.servlet?osid=delete">删除学生信息</a></p><br>
     <p align=center><a href="upload_main.jsp">内部网盘</a></p><br>
     <p align=center><a href="user/exitServlet.servlet">退出登录</a></p><br>
    </div>
   <div class="login-help">
   <br/>
      <p align=center><%out.println("登录时间："+time);%> </p>
       <br/>
        <br/>
         <p align=center>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
         <br />
      </div>


</body>
</html>
