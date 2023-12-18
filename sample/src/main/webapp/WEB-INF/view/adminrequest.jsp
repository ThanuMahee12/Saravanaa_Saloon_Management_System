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
          <h1 class="text">View New User Request</h1><br><hr><br>

          <div class="content1 ">
            <table  class='table table-striped mb-5'>
              <thead>
              <tr>
                <th ><h4>Order Code</h4></th>
                <th ><h4>Full Name</h4></th>
                <th ><h4>Contact</h4></th>
                <th ><h4>Service Name</h4></th>
                <th ><h4>Date</h4></th>
                <th ><h4>Action</h4></th>
              </tr>
              </thead>

              <tbody>
              <c:forEach items="${requestlist}" var="request">
              <tr>
                <td>${request.orderCode}</td>
                <td>${request.firstName} ${request.lastName}</td>
                <td>${request.contactNo}</td>
                <td>${request.serviceName}</td>
                <td>${request.date}</td>
                <td><a href='/sample/Appointment/adminrejectrequestpage/${request.orderCode}' class='btn btn-danger mx-2'>Assign Status</a><a href='/sample/Appointment/adminAcceptrequestpage/${request.orderCode}' class='btn btn-success mx-2'>Reject Status</a></td>
              </tr>
              </c:forEach>
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
