<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Sign In</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<div class="content container-fluid bg-light px-5">
    <main class="bg-white">
        <section class="text-center bg-light">
            <h1>Login Failed.  Please Try Again.</h1>
        </section>
        <section class="text-center pt-2 pb-2 px-2">
            <form action="j_security_check" method="post">
                <table>
                    <tr><td>User name: <input type="text" NAME="j_username"></td></tr>
                    <tr><td>Password: <input TYPE="password" NAME="j_password"></td></tr>
                    <tr><th><input type="submit" VALUE="Log In"></th></tr>
                </table>
            </form>
        </section>
    </main>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>