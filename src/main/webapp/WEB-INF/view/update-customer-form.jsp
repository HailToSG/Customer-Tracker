<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Save new customer</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager!</h2>
    </div>
</div>
<div id ="container">
    <h3>Update</h3>
    <form:form action="updateCustomer" modelAttribute="customer" method="post">
        <form:hidden path="id"/>
        <table>
            <tbody>
                <tr>
                    <td><label>First name:</label></td>
                    <td><form:input path="firstName" value="${customer.firstName}"/></td>
                </tr>

                <tr>
                    <td><label>Last name:</label></td>
                    <td><form:input path="lastName" value="${customer.lastName}"/></td>
                </tr>

                <tr>
                    <td><label>Email:</label></td>
                    <td><form:input path="eMail" value="${customer.eMail}"/></td>
                </tr>

                <tr>
                    <td><label/></td>
                    <td><input type="submit" value="Update" class="save"/>
                    <input type="button" value="Cancel"
                               onclick="window.location.href='list'; return false;"
                               class="backLink"/></td>
                </tr>
            </tbody>
        </table>
    </form:form>
    <div id="clear"/>
</div>
</body>
</html>
