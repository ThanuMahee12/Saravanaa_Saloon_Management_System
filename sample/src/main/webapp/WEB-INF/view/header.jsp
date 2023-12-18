<header class="sticky-top">
    <nav class="navbar navbar-expand-md navbar-dark" style="background: rebeccapurple">
        <a style="font-size:1.5rem"class="navbar-brand h2" href="/sample/service/test">Sarvana Beauty</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse d-flex" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item hover">
                    <a style="font-size:1.2rem" class="nav-link" href="/sample">Home</a>
                </li>
                <li class="nav-item">
                    <a style="font-size:1.2rem" class="nav-link" href="/sample/service/serviceviewpage">Service</a>
                </li>
                <li class="nav-item">
                    <%  String adpoinmentroot;
                        if(session.getAttribute("userid")!=null) {
                            adpoinmentroot = "/sample/Appointment/AppointmentForm";
                        }
                        else{
                                adpoinmentroot="/sample/user/signin";
                    }%>
                    <a style="font-size:1.2rem" class="nav-link " href="<%= adpoinmentroot %>">Appointment</a>
                </li>
                <li class="nav-item">
                    <a style="font-size:1.2rem" class="nav-link " href="/sample/chats/contactus">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a style="font-size:1.2rem" class="nav-link" href="/sample/Appcontrol/Aboutus">AboutUs</a>
                </li>
            </ul>
            <div class="my-2 " style="margin-left: auto">
                <ul class="navbar-nav">
                    <% if( session.getAttribute("userid")!=null){ %>
                    <li class="nav-item px-2">
                        <a class="nav-link" href="/sample/Appointment/myservices"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-calendar-day-fill" viewBox="0 0 16 16">
                            <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V5h16v9zm-4.785-6.145a.428.428 0 1 0 0-.855.426.426 0 0 0-.43.43c0 .238.192.425.43.425zm.336.563h-.672v4.105h.672V8.418zm-6.867 4.105v-2.3h2.261v-.61H4.684V7.801h2.464v-.61H4v5.332h.684zm3.296 0h.676V9.98c0-.554.227-1.007.953-1.007.125 0 .258.004.329.015v-.613a1.806 1.806 0 0 0-.254-.02c-.582 0-.891.32-1.012.567h-.02v-.504H7.98v4.105z"/>
                        </svg></a>
                    </li>

                    <li class="nav-item px-2">
                        <a class="nav-link " href="/sample/user/showuser"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-person-fill-gear" viewBox="0 0 16 16">
                            <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm9.886-3.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z"/>
                        </svg></a>
                    </li>
                    <li class="nav-item px-2">
                        <a class="nav-link " href="/sample/user/signout"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-person-fill-x" viewBox="0 0 16 16">
                            <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z"/>
                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm-.646-4.854.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 0 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 .708-.708Z"/>
                        </svg></a>
                    </li>
                    <% } else { %>
                    <li class="nav-item px-2">
                        <a class="nav-link " href="/sample/user/signin"><svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-person-fill-lock" viewBox="0 0 16 16">
                            <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5v-1a1.9 1.9 0 0 1 .01-.2 4.49 4.49 0 0 1 1.534-3.693C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm7 0a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1v-2Zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1Z"/>
                        </svg></a>
                    </li>
                    <% } %>
                </ul>
            </div>
        </div>
    </nav>
</header>