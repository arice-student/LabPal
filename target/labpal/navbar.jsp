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
                <a class="nav-link mr-2" aria-current="page" href="/myDashboard.jsp">My Dashboard</a>
                <a class="nav-link mr-2" href="/aboutUs.jsp">About Us</a>
                <a class="nav-link" href="/contact.jsp">Contact</a>

                <c:if test="${not empty pageContext.request.remoteUser}">

                    <c:if test="${pageContext.request.isUserInRole(\"admin\")}">
                        <a class="nav-link" href="/admin.jsp">Admin</a>
                    </c:if>

                    <%--request.isUserInRole("admin");--%>
                    <%-- <c:if test="${not empty logout}">--%>
                    <a class="nav-link" href="/myProfile">My Profile</a>
                    <a class="nav-link" href="/logout">Sign Out</a>
                    <%--<c:remove var="logout"/>--%>
                </c:if>


            </div>
        </div>
    </div>
</nav>