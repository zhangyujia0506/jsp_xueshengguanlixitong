<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<% 
String XH=request.getParameter("XH"); 
%>
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

<title>查询结果</title>
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
      <h1>查询结果（若所有信息为空则查询失败）</h1>
	  <% 
Connection con=null; 
String url = "jdbc:mysql://localhost/student_manager?useUnicode=true&characterEncoding=utf-8";
			String user = "root";
			String password = "root";
			Connection conn = DriverManager.getConnection(url, user, password); 
Class.forName("com.mysql.jdbc.Driver").newInstance();//新建实例  
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); 
String sql="select * from studentinfo where XH="+ XH; 
ResultSet rs=stmt.executeQuery(sql); 
while(rs.next()) {%> 
<p>学号：<%=rs.getString("XH")%></p>
<p>姓名：<%=rs.getString("XM")%></p> 
<p>籍贯：<%=rs.getString("JG")%></p> 
<p>出生日期：<%=rs.getString("CSRQ")%></p>
<p>政治面貌：<%=rs.getString("ZZMM")%></p>
<p>身份证号：<%=rs.getString("SFZH")%></p>
<p>乘车区间：<%=rs.getString("CCQJ")%></p>
<p>性别：<%=rs.getString("XB").equals("1")?"男":"女"%></p>
<p>民族：<%=rs.getString("MZ")%></p>
			<p>院系：<%=rs.getString("YX")%></p>
			<p>专业：<%=rs.getString("ZY")%></p>
			<p>班级：<%=rs.getString("BJ")%></p>
			<p>外语语种：<%=rs.getString("WYYZ")%></p>
			<p>家庭住址：<%=rs.getString("JTDZ")%></p>
			<p>联系电话：<%=rs.getString("LXDH")%></p>
			<p>电子邮箱：<%=rs.getString("DZYX")%></p>
			<p>备注：<%=rs.getString("BZ")%></p>
<%}%> 
<br />

<% 
rs.close(); 
stmt.close(); 
conn.close(); 
%> 

	</div>
<div class="login-help">
<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
</body>
</html>
