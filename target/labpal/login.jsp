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
        <section class="text-center pt-2 pb-2 px-2">

            <form action="j_security_check" method="post">

                <div class="form-group row">
                    <label for="username" class="col-sm-2 col-form-label">User Name:</label>
                    <div class="col-sm-10">
                        <input type="text" name="j_username" class="form-control" id="username">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password" class="col-sm-2 col-form-label">Password:</label>
                    <div class="col-sm-10">
                        <input type="password" name="j_password" class="form-control" id="password">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" value="Log In" class="btn btn-primary">Sign in</button>
                    </div>
                </div>
            </form>
        </section>
    </main>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>