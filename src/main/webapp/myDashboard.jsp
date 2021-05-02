<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="contentType.jsp" />
<%@include file="head.jsp"%>

<!DOCTYPE html>
<title>LabPal - Dashboard</title>

<html>
    <body role="document">
        <jsp:include page="navbar.jsp" />

        <main>
            <h1 class="text-center my-2">Welcome to the Dashboard</h1>
            <section class="container">
                <jsp:include page="checkForMessage.jsp" />

                <%-- Search Bar  --%>
                <form action="searchTerm" class="form-inline">
                    <div class="form-group py-3 m-auto">
                        <label for="searchTerm">Search Term: </label>
                        <input type="text" class="form-control ml-2" id="searchTerm" name="searchTerm" aria-describedby="searchTermHelp" placeholder="Enter Search Term">

                        <div class="input-group mx-2">
                            <div class="input-group-prepend">
                                <label class="input-group-text" for="selectType">Search Type</label>
                            </div>
                            <select class="custom-select" id="selectType" name="selectType">
                                <option selected>Choose...</option>
                                <optgroup label="Client">
                                    <option value="client_name">Client: Name</option>
                                </optgroup>
                                <optgroup label="ContactForm">
                                    <option value="contact_email">Contact: Email</option>
                                </optgroup>
                                <optgroup label="Method">
                                    <option value="method_id">Method: ID</option>
                                    <option value="method_title">Method: Title</option>
                                    <option value="method_client">Method: Client</option>
                                </optgroup>
                                <optgroup label="Project">
                                    <option value="project_id">Project: ID</option>
                                    <option value="project_client">Project: Client</option>
                                </optgroup>
                                <optgroup label="Sample">
                                    <option value="sample_id">Project: ID</option>
                                    <option value="sample_client">Project: Name</option>
                                    <option value="sample_lot">Project: Lot</option>
                                </optgroup>
                                <optgroup label="Test">
                                    <option value="sample_id">Project: ID</option>
                                    <option value="sample_client">Project: Name</option>
                                    <option value="sample_lot">Project: Lot</option>
                                </optgroup>
                                <option value="method">Method ID</option>
                                <option value="project">Project ID</option>
                                <option value="sample">Sample ID</option>
                                <option value="test">Test ID</option>
                                <option value="testDescription">Test Description</option>
                                <optgroup label="User">
                                    <option value="user_lastName">User</option>
                                </optgroup>
                            </select>
                        </div>
                        <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>
                    </div>
                </form>

                <%-- Dashboard Cards  --%>
                <div class="row row-cols-md-4 col d-flex justify-content-center">

                    <%-- Client Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/customer.svg" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Customer Icon">
                            <div class="card-body">
                                <h5 class="card-title">Clients</h5>
                                <p class="card-text"><a href="/clientform.jsp">Add Client</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=clients">View Clients</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- User Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/userIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="User Icon">
                            <div class="card-body">
                                <h5 class="card-title">Users</h5>
                                <p class="card-text"><a href="/signup.jsp">Add User</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=users">View Users</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- TestDescription Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/descriptionIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Test Description Icon">
                            <div class="card-body">
                                <h5 class="card-title">Test Description</h5>
                                <p class="card-text"><a href="/testDescriptionForm.jsp">Add Test Description</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=testDescriptions">View Test Descriptions</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- Method Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/methodIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Method Icon">
                            <div class="card-body">
                                <h5 class="card-title">Method</h5>
                                <p class="card-text"><a href="/methodForm.jsp">Add Method</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=methods">View Methods</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- Sample Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/sampleIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Sample Icon">
                            <div class="card-body">
                                <h5 class="card-title">Sample</h5>
                                <p class="card-text"><a href="/sampleForm.jsp">Add Sample</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=samples">View Samples</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- Project Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/projectIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Project Icon">
                            <div class="card-body">
                                <h5 class="card-title">Project</h5>
                                <p class="card-text"><a href="/sampleForm.jsp">Add Project</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=projects">View Projects</a></p>
                            </div>
                        </div>
                    </div>

                    <%-- Test Card  --%>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="images/testIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Test Icon">
                            <div class="card-body">
                                <h5 class="card-title">Test</h5>
                                <p class="card-text"><a href="/sampleForm.jsp">Add Test</a></p>
                                <p class="card-text"><a href="viewAllServlet?viewAll=tests">View Tests</a></p>
                            </div>
                        </div>
                    </div>

                        <%-- Contact Card  --%>
                        <div class="col mb-4">
                            <div class="card h-100">
                                <img src="images/contactIcon.png" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Contact Icon">
                                <div class="card-body">
                                    <h5 class="card-title">Contact Info</h5>
                                    <p class="card-text"><a href="/contact.jsp">Contact Us</a></p>
                                    <p class="card-text"><a href="viewAllServlet?viewAll=contacts">View Contact Submissions</a></p>
                                </div>
                            </div>
                        </div>


                </div>










            </section>
        </main>

        <div>Icons made by <a href="https://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a></div>
        <jsp:include page="footer.jsp" />
    </body>
</html>