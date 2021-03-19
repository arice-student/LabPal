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
            <section>
                <h2>Implemented Features So Far</h2>
                <ul>
                    <li>Deployed the web site to AWS.</li>
                    <li>Create the user sign up page (In-Progress).</li>
                </ul>
            </section>
            <section>
                <h2>Template Information</h2>
                <p><a href="search.jsp">Click here to search for users (admin only)</a></p>
                <p><a href="adminOnly/adminSearch.jsp">Click here search in admin directory</a></p>
            </section>
        </main>
        <jsp:include page="footer.jsp" />
    </body>
</html>

