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

<title>录入学生信息</title>

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
      <h1>录入学生信息</h1>
      <form action="student/inputStuInfoServlet.servlet" method="post">
        <p><input type="text" name="XH" value="" placeholder="学号"></p>
        <p><input type="text" name="XM" value="" placeholder="姓名"></p>
        <p><input type="text" name="JG" value="" placeholder="籍贯"></p>
        <p><input type="text" name="CSRQ" value="" placeholder="出生日期"></p>
        <p><input type="text" name="ZZMM" value="" placeholder="政治面貌"></p>
        <p><input type="text" name="SFZH" value="" placeholder="身份证号"></p>
        <p><input type="text" name="CCQJ" value="" placeholder="乘车区间"></p>
        <p>性别&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="XB" checked value="1">男&nbsp;&nbsp;<input type="radio" name="XB" value="0">女</p>
        <p><input type="text" name="MZ" value="" placeholder="民族"></p>
        <p><input type="text" name="YX" value="" placeholder="院系"></p>
        <p><input type="text" name="ZY" value="" placeholder="专业"></p>
        <p><input type="text" name="BJ" value="" placeholder="班级"></p>
        <p><input type="text" name="WYYZ" value="" placeholder="外语语种"></p>
        <p><input type="text" name="JTDZ" value="" placeholder="家庭住址"></p>
        <p><input type="text" name="LXDH" value="" placeholder="联系电话"></p>
        <p><input type="text" name="DZYX" value="" placeholder="电子邮箱"></p>
        <p><input type="text" name="BZ" value="" placeholder="备注"></p>
        <p class="submit"><input type="submit" value="添加"></p>
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
