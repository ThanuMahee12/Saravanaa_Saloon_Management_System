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
<main class="vh-100 mt-5 w-100 d-flex justify-content-center align-items-center">
  <div class="card mb-3">
    <img class="card-img-top" src="<c:url value="/resources/assests/img/cost-of-mens-salon-at-home-745x400-1.png"/>" />
    <div class="card-body">
      <h5 class="card-title">Sarvanaa Buaty palour</h5>
      <p class="card-text">Our Beauty palor for girls and boys .We provice different styles hair cuttings facials massages</p>
      <p class="card-text"><small class="text-muted">Last updated 3 months ago</small></p>
    </div>
  </div>
</main>
<div class="container">
  <div class="row d-flex justify-content-between py-3">
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/isuru.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">I.U.Jinasenar</h5>
        <p class="card-text">UWU/CST/19/001</p>
      </div>
    </div>
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/Thanu.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">M.Thanujan</h5>
        <p class="card-text">UWU/CST/19/007</p>
      </div>
    </div>
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/mithur.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">K.Mithursan</h5>
        <p class="card-text">UWU/CST/19/009</p>
      </div>
    </div>
  </div>
  <div class="row d-flex justify-content-between py-3">
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/Sara.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">K.Sharangan</h5>
        <p class="card-text">UWU/CST/19/010</p>
      </div>
    </div>
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/Thaksan.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">R.Thaksan</h5>
        <p class="card-text">UWU/CST/19/021</p>
      </div>
    </div>
    <div class="card shadow">
      <img class="card-img-top" src="<c:url value="/resources/assests/img/novothaya.jpeg"/>" />
      <div class="card-body">
        <h5 class="card-title">Y.N.Weerakkody</h5>
        <p class="card-text">UWU/CST/19/038</p>
        <p class="card-text"><small class="text-muted">Last updated 3 months ago</small></p>
      </div>
    </div>
  </div>
</div>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>