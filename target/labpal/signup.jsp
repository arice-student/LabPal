<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />

        <c:if test="${not empty newUser}">
            <h4>Account "${newUser.userName}" has just been created.  Click 'My Dashboard' to sign in now.</h4>
        </c:if>

        <c:if test="${not empty error}">
            <h4>{${error}</h4>
        </c:if>

        <h1 class="mt-3 mb-3 text-center">Sign Up to Join Lab Pal</h1>
        <main class="w-75 m-auto mt-2 pb-4">
            <form method="post" action="signUp" class="m-auto p-3 border rounded-lg">
                <div class="form-group row justify-content-center">
                    <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-6">
                        <input type="input" name="firstName" class="form-control" id="firstName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-6">
                        <input type="input" name="lastName" class="form-control" id="lastName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="dateOfBirth" class="col-sm-2 col-form-label">Date of Birth</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth">
                    </div>
                </div>
                <hr class="w-75" />
                <div class="form-group row justify-content-center">
                    <label for="userName" class="col-sm-2 col-form-label">User Name</label>
                    <div class="col-sm-6">
                        <input type="input" class="form-control" name="userName" id="userName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="password" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password" disabled>
                        <small>For security purposes, all passwords will be set to 'password'.</small>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-12 text-center p-2">
                        <button type="submit" name="submit" value="signup" class="btn btn-primary py-2 px-4">Sign Up</button>
                    </div>
                </div>
            </form>
        </main>

        <jsp:include page="footer.jsp" />
    </body>
</html>