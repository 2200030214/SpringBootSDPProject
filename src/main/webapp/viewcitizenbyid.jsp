<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<title>JFSD</title>
<style>
.container
{
text-align: center
}
</style>
</head>
<body>
<%@ include file="adminnavbar.jsp" %>
<h3 align="center"><u>View Citizen By ID</u></h3><br/>
<div class="form-container">
    <form method="post" action="displaycitizen">
        <label>Selete Customer ID</label>
        <select name="id" class="form-select" required>
        <option value="">---Select---</option>
        <c:forEach items="${citizenlist}" var="citizen">
        <option value="${citizen.id}">${citizen.id}-${citizen.name}</option>
        </c:forEach>
        </select>
        <br/><br/>
        <input type="submit" value="View" class="btn btn-success"/> 
    </form>
</div>
</body>
</html>
