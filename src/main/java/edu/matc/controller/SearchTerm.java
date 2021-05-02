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
                case "user_lastName":
                    workingDao = new GenericDao(User.class);
                    req.setAttribute("users", workingDao.getByPropertyLike("lastName", getSearchTerm));
                    logger.debug("The value of users is: " + req.getAttribute("users"));
                    break;
                case "method_name":
                case "method_client": {
                    workingDao = new GenericDao(Method.class);
                }
            }
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/results.jsp");
        dispatcher.forward(req, resp);
    }
}