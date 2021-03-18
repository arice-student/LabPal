<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <jsp:include page="jumbotron.jsp" />

        <!-- Main Content -->
        <main>
            <h1>Text</h1>
            <section class="row">
                <div class="col-sm-9">
                    <div class="row">
                        <img src="/images/hero_image.png" class="panel size1 col-sm-11" alt="" />
                        <div class="col-sm-1 d-flex justify-content-center align-items-center">
                            <a href="#"><img src="images/gp_next.png" alt="next" /></a>
                        </div>
                    </div>
                </div>

                <article class="col-sm-3">
                    <h2>Fawcett Comics</h2>
                    <p>Text Paragraph</p>
                </article>
            </section>
        </main>

        <a href="search.jsp">Click here to search for users (admin only)</a>
        <a href="adminOnly/adminSearch.jsp">Click here search in admin directory</a>
        <jsp:include page="footer.jsp" />
    </body>
</html>

