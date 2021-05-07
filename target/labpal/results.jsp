<%@include file="taglib.jsp"%>
<jsp:include page="contentType.jsp" />
<c:set var="title" value="Search Results" />
<%@include file="head.jsp"%>

<script type="text/javascript" class="init">
    $(document).ready(function() {
        $('#resultTable').DataTable();
    } );
</script>

<!DOCTYPE html>
    <body>
      <jsp:include page="navbar.jsp" />

        <div class="container-fluid">

            <jsp:include page="checkForMessage.jsp" />

            <h2>Search Results: </h2>

            <c:if test="${not empty clients}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </thead>
                    <tbody>
                    <c:forEach var="client" items="${clients}">
                        <tr>
                            <td>${client.id}</td>
                            <td>${client.name}</td>
                            <td><a href="/editEntity"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=client&clientID=${client.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty users}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>ID</th>
                    <th>Name</th>
                    <th>User Name</th>
                    <th>Age</th>
                    <th>Roles</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firstName} ${user.lastName}</td>
                            <td>${user.userName}</td>
                            <td>${user.age}</td>
                            <td>
                            <c:forEach var="role" items="${user.roles}">
                                ${role.id} ${role.roleName}<br/>
                            </c:forEach>
                            <td><a href="/editEntity?editItem=user&userID=${user.id}"></a>Edit User</td>
                            <td><a href="/deleteItem?deleteItem=user&userID=${user.id}">Delete User</a></td>
                            </td>
                        </tr>


                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty testDescriptions}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>ID</th>
                    <th>Test Name</th>
                    <th>Edit</th>
                    <th>Delete</th>
                    </thead>
                    <tbody>
                    <c:forEach var="testDescription" items="${testDescriptions}">
                        <tr>
                            <td>${testDescription.id}</td>
                            <td>${testDescription.testName}</td>
                            <td><a href="/editEntity?editItem=testDescription&testDescriptionID=${testDescription.id}"></a>Edit User</td>
                            <td><a href="/deleteItem?deleteItem=testDescription&testDescriptionID=${testDescription.id}">Delete User</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty methods}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>Method ID</th>
                    <th>Version</th>
                    <th>Title</th>
                    <th>Client</th>
                    <th>Status</th>
                    <th>Effective Date</th>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <tbody>
                    <c:forEach var="method" items="${methods}">
                        <tr>
                            <td>${method.id}</td>
                            <td>${method.version}</td>
                            <td>${method.title}</td>
                            <td>${method.client}</td>
                            <td>${method.status}</td>
                            <td>${method.date}</td>
                            <td><a href="/editEntity?editItem=method&methodID=${method.id}"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=method&methodID=${method.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty samples}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>Sample ID</th>
                    <th>Name</th>
                    <th>Container</th>
                    <th>Temperature</th>
                    <th>Lot</th>
                    <th>Concentration</th>
                    <td>Mfg Date</td>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <tbody>
                    <c:forEach var="sample" items="${samples}">
                        <tr>
                            <td>${sample.id}</td>
                            <td>${sample.name}</td>
                            <td>${sample.container}</td>
                            <td>${sample.temperature}</td>
                            <td>${sample.lot}</td>
                            <td>${sample.concentration}</td>
                            <td>${sample.manufactureDate}</td>
                            <td><a href="/editEntity?editItem=sample&sampleID=${sample.id}"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=sample&sampleID=${sample.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty projects}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>Project ID</th>
                    <th>Client Name</th>
                    <th>Start Date</th>
                    <th>Closure Date</th>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <tbody>
                    <c:forEach var="project" items="${projects}">
                        <tr>
                            <td>${project.id}</td>
                            <td>${project.clientName}</td>
                            <td>${project.startDate}</td>
                            <td>${project.closureDate}</td>
                            <td><a href="/editEntity?editItem=project&projectID=${project.id}"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=project&projectID=${project.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty tests}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>Test ID</th>
                    <th>Sample ID</th>
                    <th>Project ID</th>
                    <th>Test Description</th>
                    <td>Method ID</td>
                    <td>Analyst</td>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <tbody>
                    <c:forEach var="test" items="${tests}">
                        <tr>
                            <td>${test.id}</td>
                            <td>${test.sampleId}</td>
                            <td>${test.projectId}</td>
                            <td>${test.testDescription}</td>
                            <td>${test.methodId}</td>
                            <td>${test.analyst}</td>
                            <td><a href="/editEntity?editItem=test&testID=${test.id}"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=test&testID=${test.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

            <c:if test="${not empty contacts}">
                <table id="resultTable" class="display " cellspacing="0" width="100%">
                    <thead>
                    <th>Contact ID</th>
                    <th>Email</th>
                    <th>Message</th>
                    <th>Date</th>
                    <td>Edit</td>
                    <td>Delete</td>
                    </thead>
                    <tbody>
                    <c:forEach var="contact" items="${contacts}">
                        <tr>
                            <td>${contact.id}</td>
                            <td>${contact.email}</td>
                            <td>${contact.message}</td>
                            <td>${contact.date}</td>
                            <td><a href="/editEntity?editItem=contact&contactID=${contact.id}"></a>Edit</td>
                            <td><a href="/deleteItem?deleteItem=contact&contactID=${contact.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>

        </div>

      <jsp:include page="footer.jsp" />
    </body>
</html>





