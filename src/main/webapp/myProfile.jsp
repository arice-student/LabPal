<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - My Profile</title>

<html>
<body role="document">
<jsp:include page="navbar.jsp" />

<jsp:include page="checkForMessage.jsp" />

<h1 class="mt-3 mb-3 text-center">My Profile</h1>
<main class="w-75 m-auto mt-2 pb-4">
    <c:if test="${not empty userInfo}">

        <form method="post" action="updateEntity" class="m-auto p-3 border rounded-lg">
            <input type="hidden" id="userID" name="userID" value="${userInfo.id}">
            <div class="form-group row justify-content-center">
                <label for="userName" class="col-sm-2 col-form-label">User Name</label>
                <div class="col-sm-6">
                    <input type="input" name="clientName" value="${userInfo.userName}" class="form-control" id="userName" readonly>
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <label for="roles" class="col-sm-2 col-form-label">Roles</label>
                <div class="col-sm-6">
                    <input type="input" name="roles" class="form-control" id="roles" class="bg-secondary" readonly
                           value=<c:forEach var="role" items="${userInfo.roles}">${role.roleName} </c:forEach>>
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                <div class="col-sm-6">
                    <input type="input" name="firstName" value=${userInfo.firstName} class="form-control" id="firstName">
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                <div class="col-sm-6">
                    <input type="input" name="lastName" value=${userInfo.lastName} class="form-control" id="lastName">
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <label for="dateOfBirth" class="col-sm-2 col-form-label">Date of Birth</label>
                <div class="col-sm-6">
                    <input type="date" name="dateOfBirth" value=${userInfo.dateOfBirth} class="form-control" id="dateOfBirth">
                </div>
            </div>
            <div class="form-group row justify-content-center">
                <label for="password" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-6">
                    <input type="password" name="password" value=${userInfo.password} class="form-control" id="password">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-12 text-center p-2">
                    <button type="submit" name="submit" value="updateProfile" class="btn btn-primary py-2 px-4">Submit</button>
                </div>
            </div>
        </form>
    </c:if>
</main>

<c:forEach var="role" items="${userInfo.roles}">${role.roleName} </c:forEach>

<jsp:include page="footer.jsp" />
</body>
</html>