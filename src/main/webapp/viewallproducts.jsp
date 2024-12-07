<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>View All Products</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
    
</head>
<body>
    <h3 align="center" style="color: red; background-color: transparent;">View All Images</h3>
    <div class="container">
        <table class="table">
            <thead class="table-header">
                <tr>
                    <th class="header__item">ID</th>
                    <th class="header__item">Name</th>
                    <th class="header__item">Description</th>
                    <th class="header__item">History</th>
                    <th class="header__item">Image</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                    <tr class="table-row">
                        <td class="table-data"><c:out value="${product.id}" /></td>
                        <td class="table-data"><c:out value="${product.name}" /></td>
                        <td class="table-data"><c:out value="${product.description}" /></td>
                        <td class="table-data"><c:out value="${product.cost}" /></td>
                        <td>
                        <img src="displayproductimage?id=${product.id}" width="25%" height="25%"/>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
