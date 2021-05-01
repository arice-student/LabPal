package edu.matc.controller;


import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/signUp"}
)

public class SignUp extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("testing", "This is a Test.");
        GenericDao userDao = new GenericDao(User.class);

        // Confirm that the form was submitted
        if (req.getParameter("submit").equals("signup")) {

            logger.debug("The form was submitted.");

            logger.debug("First Name: " + req.getParameter("firstName"));
            logger.debug("Last Name: " + req.getParameter("lastName"));
            logger.debug("User Name: " + req.getParameter("userName"));
            logger.debug("User Name: " + req.getParameter("dateOfBirth"));

            // Confirm that the entire form was filled out
            if (req.getParameter("firstName") != null && req.getParameter("lastName") != null &&
                    req.getParameter("userName") != null) {

                // If yes, create a new User and add the form information
                User newUser = new User();
                newUser.setFirstName(req.getParameter("firstName"));
                newUser.setLastName(req.getParameter("lastName"));
                newUser.setUserName(req.getParameter("userName"));
                newUser.setPassword("password");

                // dateOfBirth is a String, so it needs to be converted to a LocalDate
                String dateOfBirth = req.getParameter("dateOfBirth");
                LocalDate localDate = LocalDate.parse(dateOfBirth);
                newUser.setDateOfBirth(localDate);

                logger.debug("User Information: " + newUser);

                // Add the User to the database
                int insertStatus = userDao.insert(newUser);

                logger.debug("Was User Inserted: " + insertStatus);

                // Confirm that the User was added to the database
                if (insertStatus != 0) {

                    // Create a newUser Attribute to display the information to the JSP page
                    req.setAttribute("newUser", newUser);

                    // Forward to the dashboard page
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/signup.jsp");
                    dispatcher.forward(req, resp);
                }

            } else {
                logger.debug("The entire form was not filled out?");
                // Return the user back to the form since it was not fully completed
                req.setAttribute("error", "There was an issue with the form completion.  Please try again.");
                RequestDispatcher dispatcher = req.getRequestDispatcher("/signup.jsp");
                dispatcher.forward(req, resp);
            }

        } else {
            // Send the user to a 404 error page since the form didn't submit properly
            req.setAttribute("error", "An unknown error has occurred.  Please try again.");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/pageNotFound404.jsp");
            dispatcher.forward(req, resp);
        }
    }
}