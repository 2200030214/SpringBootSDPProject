<%@page import="com.klef.jfsd.springboot.model.Citizen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Citizen c=(Citizen)session.getAttribute("citizen");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Citizen Home</title>
</head>
<body>
<%@include file="citizennavbar.jsp" %><br/><br/>
Welcome <%=c.getName() %>
</body>
</html>