<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/7/2023
  Time: 4:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="/resources/assests/bootstrap/css/bootstrap.min.css"/>" >
    <link rel="stylesheet" href="<c:url value="/resources/assests/css/Adminstyle.css"/> ">
    <link rel="stylesheet" href="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>"  />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <jsp:include page="adminsidebar.jsp"/>
            <div class="col-sm-10 min-vh-100 sticky-top ">
                <jsp:include page="adminheader.jsp"/>
                <main class="vh-100 mt-md-3 w-100">
                    <div class="row w-100">
                        <div class="col-lg-8">

                        </div>
                        <div class="col-lg-4" style="border-radius: 10px">
                            <h5 class="fw-bold">UpComing Appointments</h5>
                            <div class="d-flex flex-md-row  justify-content-between w-100 px-lg-2 align-items-center">
                                <h6><i class="far fa-calendar-alt me-2 fs-2" style="color: purple"></i><span class="text-dark h6">June</span></h6>
                                <div class="btn-group " role="group" aria-label="Basic example">
                                    <a type="button" class="nav-link text-black-50"><i class="fa-solid fa-chevron-left"></i></a>
                                    <a type="button" class="nav-link text-black-50"><i class="fa-solid fa-chevron-right"></i></a>
                                </div>
                            </div>
                                <ul class="d-flex nav justify-content-around align-items-center">
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>
                                    <li class="text-center bg-secondary bg-gradient px-2 py-1" style="border-radius: 5px">
                                        <p class="h6 text-white">25</p>
                                        <p class="text-white-50" style="font-size: small">Mon</p>
                                    </li>


                                </ul>
                            <div class="mt-3 vh-75" data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-offset="0" tabindex="0">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <img class="img-fluid rounded-2" src="<c:url value="/resources/assests/img/Sara.jpeg" />" width="80px" height="80px">
                                    </div>
                                    <div class="card-body">
                                        <h5 class="text-dark">Thanush</h5>
                                        <p style="font-size: small">Style</p>
                                        <p class="text-black-50" style="font-size: smaller">vvdfdfgdfg</p>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <div class="text-center">
                                            <p><i class="fas fa-ellipsis-h text-black-50" style="font-size: 25px"></i></p>
                                            <p style="font-size: 15px">Rs 800.00</p>
                                        </div>

                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>
                </main>
            </div>
        </div>
    </div>
    <footer>

    </footer>
    <script src="<c:url value="/resources/assests/js/jquery.js"/>"></script>
    <script src="<c:url value="/resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
</body>
</html>
