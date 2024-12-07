<%@page import="com.klef.jfsd.springboot.model.Educator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Educator e=(Educator)session.getAttribute("educator");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Educator Home</title>
</head>
<body>
<%@include file="educatornavbar.jsp" %><br/><br/>
Welcome <%=e.getName() %>
</body>
</html>