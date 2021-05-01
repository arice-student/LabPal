<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
    <div class="container-fluid">

        <!-- Image -->
        <a class="navbar-brand" href="index.jsp">
            <img src="images/labpal_logo.png" width="75" height="75" class="d-inline-block align-top" alt="Lab Pal Logo">
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
                <a class="nav-link mr-2" aria-current="page" href="/labpal/myDashboard.jsp">My Dashboard</a>
                <a class="nav-link mr-2" href="/labpal/aboutUs.jsp">About Us</a>
                <a class="nav-link" href="/labpal/contact.jsp">Contact</a>


<%--                <c:if test="${!sessionScope.size() != null}">--%>
<%--                    <a class="nav-link" href="/labpal/logout.jsp">Sign Out</a>--%>
<%--                </c:if>--%>

            </div>
        </div>
    </div>
</nav>