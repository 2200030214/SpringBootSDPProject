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
<h3 align="center">My Profile</h3>
ID: <%=c.getId() %><br/>
NAME: <%=c.getName() %><br/>
GENDER: <%=c.getGender() %><br/>
DOB: <%=c.getDateofbirth() %><br/>
EMAIL: <%=c.getEmail() %><br/>
LOCATION: <%=c.getLocation() %><br/>
CONTACT: <%=c.getContact() %><br/>
</body>
</html>