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
  <div class="row mb-5">
    <jsp:include page="adminsidebar.jsp"/>
    <main class="col-sm-10">
      <div class="container-fluid mt-5">

        <div id="section">
          <h1 class="text">View Services</h1><br><hr><br>

          <div class="content1 ">
            <div><a class="btn btn-success" href="/sample/service/Serviceform" id="addbtn">Add Service</a></div>
            <table  class='table table-striped mb-2 w-100'>
              <thead class="text-center">
              <tr>
                <th class="col-1 px-1"><h4>Service Id</h4></th>
                <th class="col-2 px-1"><h4>Service Name</h4></th>
                <th class="col-1 px-1"><h4>Service Cost</h4></th>
                <th class="col-3 px-1"><h4>Description</h4></th>
                <th class="col-3 px-1"><h4>Comments</h4></th>
                <th class="col-2 px-1"><h4>Action</h4></th>

              </tr>
              </thead>

              <tbody>
              <c:forEach items="${servicelist}" var="service">
                <tr>
                  <td class="col-1 px-1">${service.servicecode}</td>
                  <td class="col-2 px-1">${service.servicename}</td>
                  <td class="col-1 px-1">${service.serviceamount}</td>
                  <td class="col-3 px-1">${service.serviceDescription}</td>
                  <td></td>
                  <td class="col-2 px-1"><a href="deleteservice/${service.servicecode}" class='btn btn-sm btn-danger button mx-1'>Delete</a><a href='editservice/${service.servicecode}' class='btn btn-sm btn-info button mx-1'>Edit</a></td>
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
<script src="<c:url value="/resources/assests/js/admin.js"/>"></script>
</body>
</html>
