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
                                <optgroup label="Method">
                                    <option value="method_id">Method: ID</option>
                                    <option value="method_title">Method: Title</option>
                                    <option value="method_client">Method: Client</option>
                                </optgroup>
                                <option value="method">Method ID</option>
                                <option value="project">Project ID</option>
                                <option value="sample">Sample ID</option>
                                <option value="test">Test ID</option>
                                <option value="testDescription">Test Description</option>
                                <option value="user">User</option>
                            </select>
                        </div>
                        <button type="submit" name="submit" value="search" class="btn btn-primary">Search</button>
                    </div>
                </form>








                <div class="row row-cols-sm-3 row-cols-md-4 row-cols-md-6">
                    <div class="col mb-4">
                        <div class="card h-100">
                            <a href="/search.jsp">
                                <img src="images/searchIcon.svg" class="card-img-top img-fluid max-width:100 height:auto img-thumbnail" alt="Search Icon">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">Clients</h5>
                                <p class="card-text"><a href="/clientform.jsp">Add Client</a></p>
                                <p class="card-text"><a href="viewAll">View Clients</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a short card.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card h-100">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
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