<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - About Us</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />

        <div class="content container-fluid bg-light px-5">
            <main class="bg-white">
                <section class="text-center pt-2 pb-2 px-2">
                    <h2>Our Mission</h2>
                    <p>To provide the best laboratory application services on the market.</p>
                </section>
                <section class="text-center pb-2 px-2 mb-3">
                    <h2>About</h2>
                    <p>At Lab Pal, we all come to work every day because we want to help laboratories transition from a paper-based system to an application-based system, while still meeting the qualifications required for GMP, ISO and other regulatory bodies.  To do this, we implement rigorous quality and testing standards.  In addition, we're constantly trying to improve our processes by learning the new technologies, hiring the brightest employees and working diligently with clients to exceed their expectations.</p>
                    <p>Lab Pal was started in 2021 and is located in Madison, Wisconsin.  The software application is setup using the Java programming language and other supplemental technologies such as Maven, Log4j, JUnit, Bootstrap, Project Lombok and more.</p>
                </section>
            </main>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>