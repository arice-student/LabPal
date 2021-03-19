<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />

        <h1 class="mt-3 mb-3 text-center">Sign Up to Join Lab Pal</h1>
        <main class="w-75 m-auto mt-2 pb-4">
            <form action="signUp" class="m-auto p-3 border rounded-lg">
                <div class="form-group row justify-content-center">
                    <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
                    <div class="col-sm-6">
                        <input type="input" class="form-control" id="firstName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
                    <div class="col-sm-6">
                        <input type="input" class="form-control" id="lastName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="dateOfBirth" class="col-sm-2 col-form-label">Date of Birth</label>
                    <div class="col-sm-6">
                        <input type="date" class="form-control" id="dateOfBirth">
                    </div>
                </div>
                <hr class="w-75" />
                <div class="form-group row justify-content-center">
                    <label for="userName" class="col-sm-2 col-form-label">User Name</label>
                    <div class="col-sm-6">
                        <input type="input" class="form-control" id="userName">
                    </div>
                </div>
                <div class="form-group row justify-content-center">
                    <label for="password" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password" disabled>
                        <small>For security purposes, all passwords will be set to 'password'.</small>
                    </div>
                </div>

                <fieldset class="form-group row justify-content-center">
                    <legend class="col-form-label col-sm-2 float-sm-left pt-0">Radios</legend>
                    <div class="col-sm-6">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                            <label class="form-check-label" for="gridRadios1">
                                First radio
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                            <label class="form-check-label" for="gridRadios2">
                                Second radio
                            </label>
                        </div>
                        <div class="form-check disabled">
                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
                            <label class="form-check-label" for="gridRadios3">
                                Third disabled radio
                            </label>
                        </div>
                    </div>
                </fieldset>
                <div class="form-group row justify-content-center">
                    <div class="col-sm-6 offset-sm-2">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck1">
                            <label class="form-check-label" for="gridCheck1">
                                Example checkbox
                            </label>
                        </div>
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