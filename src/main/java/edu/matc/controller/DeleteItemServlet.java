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
                case "method_id":
                case "method_name":
                case "method_client": {
                    workingDao = new GenericDao(Method.class);
                }
            }
        }

        req.setAttribute("message", "The item has been successfully deleted.");

        RequestDispatcher dispatcher = req.getRequestDispatcher("/myDashboard.jsp");
        dispatcher.forward(req, resp);
    }
}