<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/3/2023
  Time: 6:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Responsive Registration Form</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="<c:url value="/resources/assests/bootstrap/css/bootstrap.min.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/assests/css/login_reg_Style.css"/> ">
</head>
<body>
<%@include file="header.jsp" %>
<main>
<div class="logincontainer">
    <h1 class="form-title">User Login</h1>
    <form:form action="login" method="post" autocomplete="off">
        <div class="main-user-info">
            <div class="user-input-login_box">
                <label path="email">Email</label>
                <input type="email"
                            id="email"
                            path="email"
                            name="email"
                            placeholder="Enter Your Email"/>
            </div>

            <div class="user-input-login_box">
                <label path="password">Password</label>
                <input type="password"
                       id="password"
                       path="password" name="password"
                       placeholder="Enter Password"
                />
            </div>

        </div>
        <div class="form-submit-btn">
            <input type="submit" value="Login">
        </div>
        <p class="text-white font-weight-bold">You Don't have Account? <a href="signup" class="text-white">Register Here</a></p>
    </form:form>
    ${message}
</div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>
