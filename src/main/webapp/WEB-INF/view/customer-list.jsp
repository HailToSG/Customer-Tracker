<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head><title>There are list of customers!</title></head>
<body>


<div id="wrapper">
    <div id="header">
        <h2>CRM -   Customer Relationship Manager!</h2>
    </div>
</div>
<div id ="content">
    <table>
        <tr><th>First name</th><th>Second name</th><th>Email</th></tr>
        <c:forEach var="tempCustomer" items="${customers}">
            <tr><td>${tempCustomer.firstName}</td><td>${tempCustomer.lastName}</td><td>${tempCustomer.eMail}</td></tr>
        </c:forEach>
    </table>

</div>


</body>
</html>
