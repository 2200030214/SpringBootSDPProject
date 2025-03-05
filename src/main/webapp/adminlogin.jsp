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
<h3 align="center"><u>Admin Login Form</u></h3>
<div class="form-container">
    <form method="post" action="checkadminlogin">
        <label>Enter Username:</label>
        <input type="text" name="auname"/><br/>
        
       
        <label>Enter Password:</label>
        <input type="password" name="apwd"/><br/>
        
        <input type="submit" value="submit" class="btn btn-success" /> 
         <input type="reset" value="clear"  class="btn btn-success"/>
    </form>
</div>
</body>
</html>
