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
  <div class="container mt-4">
    <c:forEach items="${servicedetailslist}" var="serv">
      <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="..." alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">${serv.servicename}</h5>
          <p class="card-text">${serv.serviceDescription}</p>
          <a href="#" class="btn btn-primary">Go somewhere</a>
        </div>
      </div>
    </c:forEach>
  </div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>