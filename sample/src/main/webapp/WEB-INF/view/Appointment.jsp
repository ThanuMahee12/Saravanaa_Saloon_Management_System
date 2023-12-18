<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" href="<c:url value="/resources/assests/bootstrap/css/bootstrap.min.css"/>" >
</head>
<body class="w-100">
<jsp:include page="header.jsp"/>
<main class="vh-100 d-flex justify-content-center mt-4 pt-2">
  <div class="container w-50">
      <h2 class="text-center">Add Appoiments</h2><br/><hr class="border-1"/>
    <form:form action="/sample/Appointment/AddAppointment" method="post" class="mt-5" >
        <form:input type="hidden" path="uid"  value="${userid}" />
        <div class="my-3">
          <form:input type="date" class="form-control"  path="date"/>
            <form:input type="hidden" path="orderrequest" values="${true}"/>
        </div>
            <form:select class="form-select my-3" path="service">
                <form:option selected="true" value="null">Select the services</form:option>
                <c:forEach items="${Services}" var="s">
                <form:option value="${s.servicecode}">${s.servicename}</form:option>
                </c:forEach>
            </form:select>
        <input class="btn btn-info text-white fw-bolder" type="submit" value="Booking"/>
    </form:form>
  </div>
</main>
<jsp:include page="footer.jsp"/>
<script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
<%--<script>--%>
<%--    $("#addservice").click(()=>{--%>
<%--        $("#Service").append(`<div id="s" class="input-group mb-3">--%>
<%--                <input type="text" class="form-control"  aria-label="Recipient's username" aria-describedby="button-addon2">--%>
<%--                <button id="delfield" class="btn btn-danger" type="button" id="button-addon2">X</button>--%>
<%--            </div>`);--%>
<%--    });--%>
<%--    $(document).on('click',"#delfield",()=>{--%>
<%--        console.log($(this).parent('div'));--%>
<%--    });--%>
<%--</script>--%>
</body>
</html>