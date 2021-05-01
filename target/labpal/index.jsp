<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Welcome</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />
        <jsp:include page="jumbotron.jsp" />

        <main>
            <section>
                <h2>Implemented Features So Far</h2>
                <ul>
                    <li>Deployed the web site to AWS.</li>
                    <li>Create the user sign up page (In-Progress).</li>
                </ul>
            </section>
            <section>
                <ul>
                    <li>Testing new date - Current time: <%= new java.util.Date() %></li>
                    <li>Testing application.getServerInfo() - Server: <%= application.getServerInfo() %></li>
                    <li>Testing session.getId() - Session ID: <%= session.getId() %></li>
                    <li>Testing request.getParameter - The <code>testParam</code> form parameter:<%= request.getParameter("testParam") %></li>
                    <li>Testing response.getStatus(): <%= response.getStatus() %></li>
                    <li>Testing application.getAttributeNames(): <%= application.getAttributeNames() %></li>
                    <li>Testing request.getMethod(): <%= request.getMethod()  %></li>
                    <li>Testing request.getRequestedSessionId(): <%= request.getRequestedSessionId()  %></li>
                    <li>Testing session.getAttributeNames(): <%= session.getAttributeNames()  %></li>
                    <li>Testing request.getSession(false): <%= request.getSession(false)  %></li>
                    <li>Testing request.getSession(false): <%= request.getSession(false)  %></li>

                </ul>
            </section>
            <section>
                <h2>Template Information</h2>
                <p><a href="/search.jsp">Click here to perform a search.</a></p>
            </section>
        </main>
        <jsp:include page="footer.jsp" />
    </body>
</html>

