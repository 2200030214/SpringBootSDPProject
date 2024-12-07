<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>


<html>
<head>
    <meta charset="UTF-8">
    <title>Citizen Details</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
    
</head>
<body>

<%@ include file="adminnavbar.jsp" %><br/><br/>
    <h3 align="center" style="color: red; background-color: transparent;">Citizen Details</h3>
    Total Citizens: <c:out value="${count}"></c:out><br/><br/>
    <div class="container">
        <table class="table">
            <thead class="table-header">
                <tr>
                    <th class="header__item">ID</th>
                    <th class="header__item">NAME</th>
                    <th class="header__item">GENDER</th>
                    <th class="header__item">DATE OF BIRTH</th>
                    <th class="header__item">EMAIL</th>
                    <th class="header__item">LOCATION</th>
                    <th class="header__item">CONTACT</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${citizenlist}" var="citizen">
                    <tr class="table-row">
                        <td class="table-data"><c:out value="${citizen.id}" /></td>
                        <td class="table-data"><c:out value="${citizen.name}" /></td>
                        <td class="table-data"><c:out value="${citizen.gender}" /></td>
                        <td class="table-data"><c:out value="${citizen.dateofbirth}" /></td>
                        <td class="table-data"><c:out value="${citizen.email}" /></td>
                        <td class="table-data"><c:out value="${citizen.location}" /></td>
                        <td class="table-data"><c:out value="${citizen.contact}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
