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
<header>

</header>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="adminsidebar.jsp"/>
        <main class="col-sm-10">
            <div class="container-fluid mt-5">

                <div id="section">
                    <h1 class="text">View Confirmed Booking</h1><br><hr><br>

                    <div class="content1 ">
                        <table  class='table table-striped mb-5'>
                            <thead>
                            <tr>
                                <th ><h4>Customer</h4></th>
                                <th ><h4>Service</h4></th>
                                <th ><h4>AppointmentDate</h4></th>
                                <th ><h4>AppointmentTime</h4></th>
                                <th ><h4>Status</h4></th>
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td >sample@gmail.com</td>
                                <td>Fruit Facial</td>
                                <td>2023-04-28</td>
                                <td>17.00</td>
                                <td>Accept</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<footer>

</footer>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>

