<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>There are list of customers!</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>


<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager!</h2>
    </div>
</div>
<div id ="container">
    <div id="content"/>
    <input type="button" value="Add Customer"
        onclick="window.location.href='showAddForm'; return false;"
        class="add-button"
    />
    <table>
        <tr><th>First name</th><th>Second name</th><th>Email</th><th>Action</th></tr>
        <c:forEach var="tempCustomer" items="${customers}">
            <c:url var="updateLink" value="/customer/showUpdateCustomerForm">
                <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>

            <c:url var="deleteLink" value="/customer/deleteCustomer">
                <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>
            <tr>
                <td>${tempCustomer.firstName}</td><td>${tempCustomer.lastName}</td><td>${tempCustomer.eMail}</td>
                <td><a href="${updateLink}">Update</a>|<a href="${deleteLink}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>


</body>
</html>
