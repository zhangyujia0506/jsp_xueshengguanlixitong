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

<title>查看所有学生信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/tablestyle.css">
	

</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<body>
	<%
		List stus =(List) session.getAttribute("stus");
		// out.print(stus.size());  
		Iterator iter = stus.iterator();
	%>
	<p><br/><br/></p>
	<div class="login">
      <h1>查看所有学生信息</h1>
	<table> 
		<tr>
			<td align=center>学号</td>
			<td align=center>姓名</td>
			<td align=center>籍贯</td>
			<td align=center>出生日期</td>
			<td align=center>政治面貌</td>
			<td align=center>身份证号</td>
			<td align=center>乘车区间</td>
			<td align=center>性别</td>
			<td align=center>民族</td>
			<td align=center>院系</td>
			<td align=center>专业</td>
			<td align=center>班级</td>
			<td align=center>外语语种</td>
			<td align=center>家庭住址</td>
			<td align=center>联系电话</td>
			<td align=center>电子邮箱</td>
			<td align=center>备注</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				stuInfo student = (stuInfo) iter.next();
		%>
		<tr <%if (i % 2 == 0) {%> bgcolor="#F0F8FF" <%}%>>
	
			<td align=center><%=student.getXH()%></td>
			<td align=center><%=student.getXM()%></td>
			<td align=center><%=student.getJG()%></td>
			<td align=center><%=student.getCSRQ()%></td>
			<td align=center><%=student.getZZMM()%></td>
			<td align=center><%=student.getSFZH()%></td>
			<td align=center><%=student.getCCQJ()%></td>
			<td align=center>
				<%
					if (student.getXB() == 1)
							out.print("男");
						else
							out.print("女");
				%>
			</td>
			
			<td align=center><%=student.getMZ()%></td>
			<td align=center><%=student.getYX()%></td>
			<td align=center><%=student.getZY()%></td>
			<td align=center><%=student.getBJ()%></td>
			<td align=center><%=student.getWYYZ()%></td>
			<td align=center><%=student.getJTDZ()%></td>
			<td align=center><%=student.getLXDH()%></td>
			<td align=center><%=student.getDZYX()%></td>
			<td align=center><%=student.getBZ()%></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
	<p>共<%=i %>条记录</p>
	<br/>

	</div>
	<div class="login-help">
	<a href="main.jsp"><p align=center>返回主页面</p> </a>
<br/>
<p>Copyright 2017 学生学籍信息管理系统. All Rights Reserved.</p>
</div>
</body>
</html>
