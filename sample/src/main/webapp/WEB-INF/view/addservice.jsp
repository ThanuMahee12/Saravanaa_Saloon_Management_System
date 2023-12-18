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
                    <h1 class="text text-center">Add Services</h1><br><hr><br>
                                    ${message}
                    <div class="content1 w-50 ">
                        <form:form method="post" action="/sample/service/saveservice">
                            <div class="form-group py-2">
                                <label>Service Name</label>
                                <form:input type="text" class="form-control"  path="servicename"/>
                            </div>
                            <div class="form-group py-2">
                                <label>Description</label>
                                <form:input type="text" class="form-control"  path="serviceDescription"/>
                            </div>
                            <div class="form-group py-2">
                                <label>Service Cost</label>
                                <form:input type="text" class="form-control" path="serviceamount"/>
                            </div>
                            <div class="d-flex justify-content-center py-2"><input type="submit" class="btn btn-success btn-lg" value="Save"></div>

                        </form:form>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>
<jsp:include page="footer.jsp"/>

<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/assests/js/admin.js"/>"></script>
</body>
</html>
