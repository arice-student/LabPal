<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <jsp:include page="jumbotron.jsp" />

        <a href="search.jsp">Click here to search for users (admin only)</a>
        <a href="adminOnly/adminSearch.jsp">Click here search in admin directory</a>
        <jsp:include page="footer.jsp" />
    </body>
</html>

