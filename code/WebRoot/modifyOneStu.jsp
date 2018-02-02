<%@page import="com.lntu.model.stuInfo"%>
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

<title>修改学生信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		stuInfo stu =(stuInfo) session.getAttribute("stu");
	%>
	
<p><br/><br/></p>
<div class="login">
      <h1>修改学生信息</h1>
<form action="student/modifyOneStuInfoServlet.servlet" method="post">
<P>学籍档案编号：<input readonly="readonly" type="text" name="id" value="<%=stu.getId() %>"></p>
 <p>学号<input type="text" name="XH" value="<%=stu.getXH()%>"></p>
        <p>姓名：<input type="text" name="XM" value="<%=stu.getXM()%>" ></p>
        <p>籍贯：<input type="text" name="JG" value="<%=stu.getJG()%>" ></p>
        <p>出生日期：<input type="text" name="CSRQ" value="<%=stu.getCSRQ() %>"></p>
        <p>政治面貌：<input type="text" name="ZZMM" value="<%=stu.getZZMM() %>"></p>
        <p>身份证号：<input type="text" name="SFZH" value="<%=stu.getSFZH() %>" ></p>
        <p>乘车区间：<input type="text" name="CCQJ" value="<%=stu.getCCQJ() %>" ></p>
        <p>性别&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="XB" <%if (stu.getXB() == 1) {%>
					checked <%}%> value="1">男&nbsp;&nbsp; <input type="radio"
					name="XB" <%if (stu.getXB() == 0) {%> checked <%}%> value="0">女</p>
        <p>民族：<input type="text" name="MZ" value="<%=stu.getMZ() %>"></p>
        <p>院系：<input type="text" name="YX" value="<%=stu.getYX() %>" ></p>
        <p>专业：<input type="text" name="ZY" value="<%=stu.getZY() %>" ></p>
        <p>班级：<input type="text" name="BJ" value="<%=stu.getBJ() %>" ></p>
        <p>外语语种：<input type="text" name="WYYZ" value="<%=stu.getYX() %>" ></p>
        <p>家庭住址：<input type="text" name="JTDZ" value="<%=stu.getJTDZ() %>" ></p>
        <p>联系电话：<input type="text" name="LXDH" value="<%=stu.getLXDH() %>" ></p>
        <p>电子邮箱：<input type="text" name="DZYX" value="<%=stu.getDZYX() %>" ></p>
        <p>备注：<input type="text" name="BZ" value="<%=stu.getBZ() %>" ></p>
        
        <p class="submit"><input type="submit" value="修改"></p>
         <p class="submit"><input type="reset" value="重置"></p>
	</form>
</div>
<div class="login-help">
<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
</body>
</html>
