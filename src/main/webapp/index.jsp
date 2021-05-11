<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <jsp:include page="jumbotron.jsp" />

        <main>
            <section class="pl-3">
                <h2>Implemented Features So Far</h2>
                <h5>General Pages</h5>
                <ul>
                    <li>Create New User</li>
                    <li>Contact Us</li>
                    <li>About Us</li>
                </ul>
                <h5>Dashboard</h5>
                <ul>
                    <li>Search functionality</li>
                    <li>Cards setup</li>
                    <li>View functionality</li>
                    <li>Delete functionality</li>
                    <li>Add functionality (Clients and Users only)</li>
                </ul>
                <h5>Account Information</h5>
                <ul>
                    <li>My Profile page</li>
                    <li>Admin page</li>
                </ul>
            </section>
        </main>
        <jsp:include page="footer.jsp" />
    </body>
</html>

