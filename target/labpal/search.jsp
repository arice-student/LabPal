<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Search</title>
<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <div class="content container-fluid bg-light px-5">
            <main class="bg-white">
                <section class="text-center pt-2 pb-2 px-2">

                    <form action="searchUser" class="form-inline">
                        <div class="form-group">
                            <label for="searchTerm">Search</label>
                            <input type="text" class="form-control" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Enter last name">
                        </div>
                        <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>
                        <button type="submit" name="submit" value="viewAll" class="btn btn-primary">View all users</button>
                    </form>

                </section>
            </main>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>