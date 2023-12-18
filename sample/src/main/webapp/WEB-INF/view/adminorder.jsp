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
<div class="container-fluid">
  <div class="row">
    <jsp:include page="adminsidebar.jsp"/>
    <main class="col-sm-10">
      <div class="container-fluid mt-5">

        <div id="section">
          <h1 class="text">View Booking</h1><br><hr><br>

          <div class="content1">
            <table  class='table table-striped mb-5'>
              <thead class="text-center">
              <tr>
                <th ><h4>OrderCode</h4></th>
                <th ><h4>Order Date</h4></th>
                <th ><h4>Service Code</h4></th>
                <th ><h4>user Code</h4></th>
                <th><h4>Action</h4></th>
              </tr>
              </thead>

              <tbody>
              <c:forEach items="${orderlist}" var="order">
              <tr>
                <td>${order.orderCode}</td>
                <td>${order.date}</td>
                <td >${order.serviceid}</td>
                <td>${order.uid}</td>
                <td><a href="Cancel/${order.orderCode}" class='btn btn-danger button btn-sm'>Reject</a></td>
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
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>
