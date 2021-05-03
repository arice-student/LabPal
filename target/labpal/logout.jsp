<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Sign Out</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<jsp:include page="checkForMessage.jsp" />

<div class="content container-fluid bg-light px-5">
    <main class="bg-white">
        <section class="text-center pt-2 pb-2 px-2">
            <h2>You have been signed out.</h2>
            <p>Thanks for using our application.  Please come again soon!</p>
        </section>
    </main>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>