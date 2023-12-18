<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<main class="min-vh-100 my-5 py-5 w-100 d-flex justify-content-center">
   <div class="container mt-4">
       <div class="d-flex justify-content-between w-75 mx-auto" >
           <div class="card mx-3" style="width: 300px" >
               <img class="card-img-top" width="300px" height="300px" src="<c:url value="/resources/assests/img/icono-telefono-azul.png" />" alt="Card image cap">
               <div class="card-body">
                   <h5 class="card-title">Contact No</h5>
                   <p class="card-text">Available at 8am-10pm and <span class="text-danger">Sunday Holiday</span></p>
                   <p class="card-text">Mobile : 09878273293</p>
               </div>
               <div class="card-body">
                   <a href="tel:0766859048" class="card-link">go</a>
               </div>
           </div>
           <div class="card mx-3" style="width: 300px">
               <img class="card-img-top" width="300px" height="300px" src="<c:url value="/resources/assests/img/location-map-flat.png" />" alt="Card image cap">
               <div class="card-body">
                   <h5 class="card-title">Address</h5>
                   <p class="card-text">No 02,Badullah(Near by uwa wellassa university)</p>
               </div>
               <div class="card-body">
                   <a href="#" class="card-link">Card link</a>
               </div>
           </div>
           <div class="card mx-3" style="width: 300px">
               <img class="card-img-top" width="300px" height="300px" src="<c:url value="/resources/assests/img/Gmail-new-logo.jpg" />" alt="Card image cap">
               <div class="card-body">
                   <h5 class="card-title">Mail</h5>
                   <p class="card-text">24 hours available quick response and request are satisfy</p>
                   <p class="card-text">Mail : Sarvana@gmail.com</p>
               </div>
               <div class="card-body">
                   <a href="mailto:thanumahee440@gmail.com" class="card-link">Card link</a>
               </div>
           </div>
       </div>
       <div class="mx-auto w-75 my-4 py-3">
           <div class="jumbotron">
               <h1 class="h2 fw-bolder">Chat here</h1>
               <form:form action="/sample/chats/sendmessage" method="post">
                   <div class="form-group">
                       <label for="mes">Message</label>
                       <form:input type="text" class="form-control" id="mes" placeholder="enter the message" path="message"/>
                   </div>
               <hr class="my-4">
               <p>you might wait for Sometime </p>
               <p class="lead">
                   <% if(session.getAttribute("userid")!=null) { %>
                   <form:input type="hidden" path="userid" value="${user.id}"/>
                   <form:button type="submit" style="background:rebeccapurple" class="btn rounded-circle btn-lg" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="#fff" class="bi bi-cursor-fill" viewBox="0 0 16 16">
                       <path d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103z"/>
                   </svg></form:button>
                  <% } else{ %>
                   <button disabled type="submit" style="background:rebeccapurple" class="btn rounded-circle btn-lg" role="button"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="#fff" class="bi bi-cursor-fill" viewBox="0 0 16 16">
                       <path d="M14.082 2.182a.5.5 0 0 1 .103.557L8.528 15.467a.5.5 0 0 1-.917-.007L5.57 10.694.803 8.652a.5.5 0 0 1-.006-.916l12.728-5.657a.5.5 0 0 1 .556.103z"/>
                   </svg></button>
                   <%}%>
               </p>
               </form:form>
               <div class="container">

                   <c:forEach items="${chats}" var="chatings">
                       <div class="card mt-2">
                           <div class="card-body">
                               <h5 class="card-title text-sm-start">${user.firstname} ${user.lastname}</h5>
                               <p class="card-text text-success text-sm-end">${chatings.message}</p>
                               <p class="card-text text-primary text-sm-start">${chatings.reply}</p>
                           </div>
                       </div>
                   </c:forEach>
               </div>
           </div>
       </div>
   </div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>