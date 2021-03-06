<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Sign In</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<div class="content container-fluid bg-light px-5 pb-5">
    <main class="bg-white w-75 pt-4 m-auto border">
        <h3 class="pb-2 text-center">Login to the Dashboard</h3>
        <c:if test="${not empty param.error}" >
            <h4 class="text-danger text-center">Login Failed.  Please Try Again.</h4>
        </c:if>
        <section class="text-center pt-2 pb-2 w-75 m-auto">
            <form action="j_security_check" method="post">

                <div class="form-group row">
                    <label for="username" class="col-sm-3 col-form-label">User Name:</label>
                    <div class="col-sm-9">
                        <input type="text" name="j_username" class="form-control" id="username">
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password" class="col-sm-3 col-form-label">Password:</label>
                    <div class="col-sm-9">
                        <input type="password" name="j_password" class="form-control" id="password">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-4 m-auto">
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