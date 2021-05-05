package edu.matc.controller;

import edu.matc.entity.*;
import edu.matc.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import java.io.IOException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/searchTerm"}
)

public class SearchTerm extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("submit").equals("search")) {

            // Determine the search type and create the appropriate Dao based on that search type
            String getSearchType = req.getParameter("selectType");
            String getSearchTerm = req.getParameter("searchTerm");
            GenericDao workingDao;

            switch (getSearchType) {
                case "client_name":
                    workingDao = new GenericDao(Client.class);
                    req.setAttribute("clients", workingDao.getByPropertyLike("name", getSearchTerm));
                    logger.debug("The value of clients is: " + req.getAttribute("clients"));
                    break;
                case "contact_email":
                    workingDao = new GenericDao(ContactForm.class);
                    req.setAttribute("contacts", workingDao.getByPropertyLike("email", getSearchTerm));
                    break;
                case "method_id":
                    workingDao = new GenericDao(Method.class);
                    req.setAttribute("methods", workingDao.getByPropertyLike("id", getSearchTerm));
                    break;
                case "method_title":
                    workingDao = new GenericDao(Method.class);
                    req.setAttribute("methods", workingDao.getByPropertyLike("title", getSearchTerm));
                    break;
                case "method_client":
                    workingDao = new GenericDao(Method.class);
                    req.setAttribute("methods", workingDao.getByPropertyLike("client", getSearchTerm));
                    break;
                case "project_id":
                    workingDao = new GenericDao(Project.class);
                    int projectID = Integer.parseInt(getSearchTerm);
                    req.setAttribute("projects", workingDao.getById(projectID));
                    break;
                case "project_client":
                    workingDao = new GenericDao(Project.class);
                    req.setAttribute("projects", workingDao.getByPropertyLike("clientName", getSearchTerm));
                    break;
                case "sample_id":
                    workingDao = new GenericDao(Sample.class);
                    int sampleID = Integer.parseInt(getSearchTerm);
                    req.setAttribute("projects", workingDao.getById(sampleID));
                    break;
                case "sample_name":
                    workingDao = new GenericDao(Sample.class);
                    req.setAttribute("samples", workingDao.getByPropertyLike("name", getSearchTerm));
                    break;
                case "sample_lot":
                    workingDao = new GenericDao(Sample.class);
                    req.setAttribute("samples", workingDao.getByPropertyLike("lot", getSearchTerm));
                    break;
                case "test_project":
                    workingDao = new GenericDao(Test.class);
                    req.setAttribute("tests", workingDao.getByPropertyLike("projectId", getSearchTerm));
                    break;
                case "test_analyst":
                    workingDao = new GenericDao(Test.class);
                    req.setAttribute("tests", workingDao.getByPropertyLike("analyst", getSearchTerm));
                    break;
                case "testdescription_testname":
                    workingDao = new GenericDao(TestDescription.class);
                    req.setAttribute("testDescriptions", workingDao.getByPropertyLike("testName", getSearchTerm));
                    break;
                case "user_firstName":
                    workingDao = new GenericDao(User.class);
                    req.setAttribute("users", workingDao.getByPropertyLike("firstName", getSearchTerm));
                    break;
                case "user_lastName":
                    workingDao = new GenericDao(User.class);
                    req.setAttribute("users", workingDao.getByPropertyLike("lastName", getSearchTerm));
                    break;
                case "user_userName":
                    workingDao = new GenericDao(User.class);
                    req.setAttribute("users", workingDao.getByPropertyLike("userName", getSearchTerm));
                    break;
            }
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/results.jsp");
        dispatcher.forward(req, resp);
    }
}