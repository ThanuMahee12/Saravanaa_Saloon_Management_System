<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/7/2023
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ServiceDetails</title>
    <link rel="stylesheet" href="<c:url value="/resources/assests/bootstrap/css/bootstrap.min.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/assests/css/Adminstyle.css"/> ">
</head>
<body>
<jsp:include page="header.jsp"/>
<main class="min-vh-100 my-3 py-3 w-100 d-flex justify-content-center">
    <div clss="w-100">
    <h1 class="text text-center">My Order</h1><br><hr><br>
    <table class="table table-striped w-100 mx-auto">
        <thead>
        <tr>
            <th scope="col">Order</th>
            <th scope="col">Service</th>
            <th scope="col">Date</th>
            <th scope="col">Order Request</th>
            <th scope="col">Response</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${myorders}" var="ord">
            <tr>
                <td>${ord.orderCode}</td>
                <td>${ord.service}</td>
                <td>${ord.date}</td>
                <td>${ord.orderrequest}</td>
                <td>${ord.orderResponse}</td>
                <td><a href="/sample/Appointment/delorder/${ord.orderCode}" class='btn btn-sm btn-danger button mx-1'>Delete</a><a href='/sample/Appointment/editAppointmentForm/${ord.orderCode}' class='btn btn-sm btn-info button mx-1'>Edit</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>