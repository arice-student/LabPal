<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Admin</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<div class="content container-fluid bg-light px-5">
    <main class="bg-white w-75 m-auto">
        <section class="text-center pt-2 pb-2 px-2">
            <h2>Admin Portal</h2>
            <p>Welcome!  This section is currently under construction.</p>
        </section>
        <section class="pb-2 px-2 mb-3">
            <h2>Upcoming Projects</h2>
            <ul>
                <li>Security</li>
                    <ul>
                        <li>Allow users to create a password at login</li>
                        <li>Hash passwords</li>
                        <li>Allow for password confirmation when creating or updating passwords</li>
                        <li>Test for error pages and redirect to 404 error page</li>
                    </ul>
                <li>Dashboard</li>
                    <ul>
                        <li>Create forms for each Entity</li>
                        <li>Allow any item in an Entity to be edited</li>
                    </ul>
                <li>Implement REST functionality for logged in users</li>
            </ul>
        </section>
    </main>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>