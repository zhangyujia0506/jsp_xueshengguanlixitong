<%@page import="com.lntu.model.userTable"%>
<%@page import="com.lntu.service.userService"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
userTable user=(userTable)session.getAttribute("user");
if(user==null)
{
 %>
 
 <jsp:forward page="login.jsp"></jsp:forward>
 <%} %>
