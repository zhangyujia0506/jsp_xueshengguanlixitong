<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.sun.demoAction.FileUtil"%>
<%@ page import="java.io.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>下载文件</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	<jsp:include page="isLogin.jsp"></jsp:include>
	<body>
	<p><br/><br/></p>
	<div class="login">
		<h1>
			下载列表
		</h1>
		<%
			List<File> list = new ArrayList<File>();
			FileUtil fileUtil = new FileUtil();
			String root = "C:/tomcat/webapps/student_manager/upload_files";
			fileUtil.listFile(root, list);
		%>
		<%
		if(list.size()>0)
		{
			for (int i = 0; i < list.size(); i++) {
				String name = list.get(i).getName();
				out.print(name);
		%>
		<a href="<%=request.getContextPath()%>/mydownload?fileName=<%=name%>&path=/upload_files/">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下载</a>
		<%
			out.print("<br>");
			}
		}else{
			out.print("没有可下载文件");
		}
		%>
</div>
<div class="login-help">
	<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
	</body>
</html>
