<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/6/2023
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Responsive Registration Form</title>
  <meta name="viewport" content="width=device-width,
      initial-scale=1.0"/>
  <link rel="stylesheet" href="<c:url value="/resources/assests/css/login_reg_Style.css"/> ">
  <link rel="stylesheet" href="<c:url value="/resources/assests/bootstrap/css/bootstrap.min.css"/>" >
</head>
<body>
<jsp:include page="header.jsp"/>
<main>
<div class="logincontainer">
  <h1 class="form-title">User Registration</h1>
  ${message}
  <form:form action="register" method="POST" >
    <div class="main-user-info">
      <div class="user-input-box">
        <label >First Name</label>
        <form:input type="text"
               id="firstname"
               path="firstname"
               placeholder="Enter Your First Name"/>
      </div>

      <div class="user-input-box">
        <label>Last Name</label>
        <form:input type="text"
               id="lastname"
               path="lastname"
               placeholder="Enter Your Last Name"/>
      </div>

      <div class="user-input-box">
        <label >NIC ID</label>
        <form:input type="text"
                    id="id"
                    path="nic"
                    placeholder="Enter Your ID Number"/>
      </div>
      <div class="user-input-box">
        <label >Contact Number</label>
        <form:input type="text"
               id="contact_number"
               path="contactno"
               placeholder="Enter Your Contact Number"/>
      </div>


      <div class="user-input-box">
        <label for="password">Password</label>
        <form:input type="password"
               id="password"
               path="password"
               placeholder="Enter Your Password"/>
      </div>

      <div class="user-input-box">
        <label for="email">Email</label>
        <form:input type="email"
               id="email"
               path="email"
               placeholder="Enter Your Email"/>
      </div>
    </div>
    <div class="gender-details-box">
      <span class="gender-title">Gender</span>
      <div class="gender-category">
        <form:radiobutton  id="male" value="male" path="gender"/>
        <label for="male">Male</label>
        <form:radiobutton  id="female" value="female" path="gender"/>
        <label for="female">Female</label>

      </div>
      <p class="text-white font-weight-bold">Already Have an Account? <a href="signin" class="text-white">Login Here</a>
    </div>
    <div class="form-submit-btn">
      <input type="submit" value="Register" />
    </div>
  </form:form>
</div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>