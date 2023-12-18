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
                                <th><h4>User</h4></th>
                                <th><h4>Message</h4></th>
                                <th><h4>Reply</h4></th>
                                <th><h4>Action</h4></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${adminchats}" var="ch">
                                
                            <tr>
                                <td>${ch.userid.firstname} ${ch.userid.lastname}</td>
                                <td>${ch.message}</td>
                                <c:choose>
                                    <c:when test="${ch.reply eq 'waiting for reply...'}">
                                     <form:form method="post" action="replymessage">
                                         <form:input type="hidden" value="${ch.chatid}" path="chatid"/>
                                    <td class="form-group">
                                            <form:input type="text" class="form-control" id="reply"  placeholder="reply" path="reply"/>
                                        </td>
                                            <td><form:button type="submit" class='btn-success rounded-circle'><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-send" viewBox="0 0 15 15">
                                                <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
                                            </svg></form:button></td>
                                        </form:form>
                                    </c:when>
                                   <c:otherwise>
                                <td>${ch.reply}</td>
                                <td><a href='#' class='btn-secondary rounded-circle'><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-send" viewBox="0 0 15 15">
                                    <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
                                </svg></a></td>
                                   </c:otherwise>
                                </c:choose>
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
