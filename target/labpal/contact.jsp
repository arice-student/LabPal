<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Contact Us</title>

<html>
    <body role="document">
    <jsp:include page="navbar.jsp" />

    <jsp:include page="checkForMessage.jsp" />

        <div class="content container-fluid bg-light px-5 pb-4">
            <h2 class="text-center mb-3">Contact Us</h2>
            <main class="w-75 m-auto mt-2 pb-4 bg-white">
                <form method="post" action="processForm" class="m-auto p-3 border rounded-lg">
                    <div class="form-group row justify-content-center">
                        <label for="email" class="col-sm-2 col-form-label">Email Address</label>
                        <div class="col-sm-6">
                            <input type="email" name="email" class="form-control" id="email"
                                   pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                        </div>
                    </div>
                    <div class="form-group row justify-content-center">
                        <label for="message" class="col-sm-2 col-form-label">Comments</label>
                        <div class="col-sm-6">
                            <textarea class="form-control" name="message" id="message" rows="3" required></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-12 text-center p-2">
                            <button type="submit" name="submit" value="contactUs" class="btn btn-primary py-2 px-4">Send Form</button>
                        </div>
                    </div>
                </form>
            </main>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>