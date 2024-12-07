<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>JFSD</title>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<h3 align="center"><u>Educator Login Form</u></h3>
<div class="form-container">
    <form method="post" action="checkeducatorlogin">
        <label>Enter Email:</label>
        <input type="text" name="eemail"/><br/>
        
       
        <label>Enter Password:</label>
        <input type="password" name="epwd"/><br/>
        
        <input type="submit" value="submit"/> 
         <input type="reset" value="clear" />
    </form>
    
</div>
<h2 align="center" style="color: red">
<c:out value="${message}"></c:out><br/>
</h2>
<h2></h2>
</body>
</html>