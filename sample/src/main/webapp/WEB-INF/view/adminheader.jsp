<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="w-100 mt-2 sticky-top ">
    <nav class="navbar navbar-expand-md navbar-light px-3" style="background-color: darkviolet;border-radius: 10px">
        <span class="h5 text-white">Over view</span>
        <div class="dropdown d-inline-block">
            <span class="nav-link text-white-50 dropdown-toggle" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
            </span>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                <li><span class="dropdown-item active">This week</span></li>
                <li><span class="dropdown-item">This month</span></li>
                <li><span class="dropdown-item">This Year</span></li>
            </ul>
        </div>
        <ul class="nav  d-flex justify-content-between w-25 align-items-center" style="margin-left: auto;cursor: pointer">
            <li class="nav-item">
                <i class="fas fa-search text-white-50 fs-2"></i>
            </li>
            <li class="nav-item ">
                <i class="fa-regular fa-bell text-white-50 fs-1"></i>
            </li>
            <li class="nav-item">

                    <span class="dropdown">
                      <a class="nav-link text-white-50 btn-sm dropdown-toggle"  id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
                         <img  src="<c:url value="/resources/assests/img/Sara.jpeg" />" class="img-fluid rounded-circle" width="40px" height="40px">
                        <span class="h6 text-white">Thanush</span>
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <li><span class="dropdown-item">Setting</span></li>
                        <li><span class="dropdown-item">Log out</span></li>
                      </ul>
                    </span>
            </li>
        </ul>
    </nav>

</header>