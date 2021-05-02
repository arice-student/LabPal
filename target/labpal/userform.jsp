<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - User</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<jsp:include page="checkForMessage.jsp" />

<h1 class="mt-3 mb-3 text-center">User Details</h1>
<main class="w-75 m-auto mt-2 pb-4">
    <form method="post" action="processForm" class="m-auto p-3 border rounded-lg">
        <div class="form-group row justify-content-center">
            <label for="userName" class="col-sm-2 col-form-label">User Name</label>
            <div class="col-sm-6">
                <input type="input" name="userName" class="form-control" id="userName">
            </div>
        </div>
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
        <div class="form-group row">
            <div class="col-sm-12 text-center p-2">
                <button type="submit" name="submit" value="process_user" class="btn btn-primary py-2 px-4">Submit</button>
            </div>
        </div>
    </form>
</main>

<jsp:include page="footer.jsp" />
</body>
</html>