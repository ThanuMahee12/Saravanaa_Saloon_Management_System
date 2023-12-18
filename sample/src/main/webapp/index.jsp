<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="<c:url value="resources/assests/bootstrap/css/bootstrap.min.css"/>" >
</head>
<body class="w-100">
<jsp:include page="WEB-INF/view/header.jsp"/>
<main>
    <div>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img height="700px" class="d-block w-100" src="resources/assests/img/cost-of-mens-salon-at-home-745x400-1.png" alt="First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Come and See Beauty</h5>
                    <p>Buatuy Palur</p>
                </div>
            </div>
            <div class="carousel-item" >
                <img height="700px" class="d-block w-100" src="resources/assests/img/facial-girls.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>.More Beauty More Cutties</h5>
                    <p>Girls Facial available here</p>
                </div>
            </div>
            <div class="carousel-item">
                <img height="700px" class="d-block w-100" src="resources/assests/img/Parlour-Services.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>We have Multi Service here</h5>
                    <p>Facial and  Hair Cutting for Boys and Girls </p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    </div>
    <div class="w-100">

    </div>
</main>
<jsp:include page="WEB-INF/view/footer.jsp"/>
    <script src="<c:url value="resources/assests/js/jquery.js"/>"></script>
    <script src="<c:url value="resources/assests/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="resources/assests/js/main.js"/>"></script>
</body>
</html>