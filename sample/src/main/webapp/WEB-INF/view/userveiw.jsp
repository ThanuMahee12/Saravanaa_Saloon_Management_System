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
<main class="vh-75 mt-5 w-100 d-flex justify-content-center align-items-center">
  <div class="container-fluid w-50">

    <div id="section">
      <h1 class="text-center">User Details</h1><br><hr><br>
      <table class="table">
        <tr>
          <th>First Name</th>
          <td>${lous.firstname}</td>
        </tr>
        <tr>
          <th>Last Name</th>
          <td>${lous.lastname}</td>
        </tr>
        <tr>
          <th>Nic Number</th>
          <td>${lous.nic}</td>
        </tr>
        <tr>
          <th>Email Address</th>
          <td>${lous.email}</td>
        </tr>
        <tr>
          <th>Contact Number</th>
          <td>${lous.contactno}</td>
        </tr>
        <tr>
          <th>Gender</th>
          <td>${lous.gender}</td>
        </tr>
        <tr>
          <td colspan="2" class="d-flex justify-content-sm-start">
            <a href="edituser/${lous.id}" class="btn btn-info mx-2 p-1">Edit Details</a>
            <a href="deleteuser/${lous.id}" class="btn btn-danger mx-2 p-1">Delete account</a>
          </td>
        </tr>
      </table>
      ${message}
    </div>
  </div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>
