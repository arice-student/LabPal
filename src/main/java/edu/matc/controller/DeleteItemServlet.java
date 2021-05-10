package edu.matc.controller;

import edu.matc.entity.*;
import edu.matc.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


/**
 * A simple servlet to welcome the user.
 *
 * @author pwaite
 */
@WebServlet(
        urlPatterns = {"/deleteItem"}
)

public class DeleteItemServlet extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logger.debug("In the doGet method of DeleteItem.");

        if (req.getParameterMap().containsKey("deleteItem")) {

            // Determine the search type and create the appropriate Dao based on that search type
            String getItemType = req.getParameter("deleteItem");
            GenericDao workingDao;

            switch (getItemType) {
                case "client":
                    int clientID = Integer.parseInt(req.getParameter("clientID"));
                    workingDao = new GenericDao(Client.class);
                    workingDao.delete(workingDao.getById(clientID));
                    break;
                case "user":
                    int userID = Integer.parseInt(req.getParameter("userID"));
                    logger.debug("The user ID to be deleted: " + userID);
                    workingDao = new GenericDao(User.class);
                    workingDao.delete(workingDao.getById(userID));
                    logger.debug("The user ID after deletion: " + userID);
                    break;
                case "testDescription":
                    int testDescriptionID = Integer.parseInt(req.getParameter("testDescriptionID"));
                    logger.debug("The testDescription ID to be deleted: " + testDescriptionID);
                    workingDao = new GenericDao(TestDescription.class);
                    workingDao.delete(workingDao.getById(testDescriptionID));
                    logger.debug("The testDescription ID after deletion: " + testDescriptionID);
                    break;
                case "method":
                    int methodID = Integer.parseInt(req.getParameter("methodID"));
                    logger.debug("The testDescription ID to be deleted: " + methodID);
                    workingDao = new GenericDao(Method.class);
                    workingDao.delete(workingDao.getById(methodID));
                    logger.debug("The method ID after deletion: " + methodID);
                    break;
                case "sample":
                    int sampleID = Integer.parseInt(req.getParameter("sampleID"));
                    logger.debug("The sample ID to be deleted: " + sampleID);
                    workingDao = new GenericDao(Sample.class);
                    workingDao.delete(workingDao.getById(sampleID));
                    logger.debug("The method ID after deletion: " + sampleID);
                    break;
                case "project":
                    int projectID = Integer.parseInt(req.getParameter("projectID"));
                    logger.debug("The sample ID to be deleted: " + projectID);
                    workingDao = new GenericDao(Project.class);
                    workingDao.delete(workingDao.getById(projectID));
                    logger.debug("The method ID after deletion: " + projectID);
                    break;
                case "test":
                    int testID = Integer.parseInt(req.getParameter("testID"));
                    logger.debug("The sample ID to be deleted: " + testID);
                    workingDao = new GenericDao(Test.class);
                    workingDao.delete(workingDao.getById(testID));
                    logger.debug("The method ID after deletion: " + testID);
                    break;
                case "contact":
                    int contactID = Integer.parseInt(req.getParameter("contactID"));
                    logger.debug("The sample ID to be deleted: " + contactID);
                    workingDao = new GenericDao(ContactForm.class);
                    workingDao.delete(workingDao.getById(contactID));
                    logger.debug("The method ID after deletion: " + contactID);
                    break;
            }
        }

        req.setAttribute("message", "The item has been successfully deleted.");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/myDashboard.jsp");
        dispatcher.forward(req, resp);
    }
}