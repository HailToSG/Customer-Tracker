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
    <h3>Save</h3>
    <form:form action="saveCustomer" modelAttribute="customer" method="post">
        <table>
            <tbody>
                <tr>
                    <td><label>First name:</label></td>
                    <td><form:input path="firstName"/></td>
                </tr>

                <tr>
                    <td><label>Last name:</label></td>
                    <td><form:input path="lastName"/></td>
                </tr>

                <tr>
                    <td><label>Email:</label></td>
                    <td><form:input path="eMail"/></td>
                </tr>

                <tr>
                    <td><label/></td>
                    <td><input type="submit" value="Save" class="save"/>
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
