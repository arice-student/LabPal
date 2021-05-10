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
import java.io.PrintWriter;
import java.time.LocalDate;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.sql.Timestamp;

/**
 * A simple servlet to welcome the client.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/updateEntity"}
)

public class UpdateEntity extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirectURL = "myDashboard.jsp";

        // Confirm that the form was submitted
        if (req.getParameterMap().containsKey("submit")) {

            // Determine the search type and create the appropriate Dao based on that search type
            String getSubmitType = req.getParameter("submit");
            GenericDao workingDao;

            switch (getSubmitType) {

                //<editor-fold desc="Update Profile">
                case "updateProfile":
                    workingDao = new GenericDao(User.class);

                    String id = req.getParameter("userID");
                    int userID = Integer.parseInt(id);
                    User userToUpdate = (User) workingDao.getById(userID);

                    String dateOfBirth = req.getParameter("dateOfBirth");
                    LocalDate localDate = LocalDate.parse(dateOfBirth);
                    userToUpdate.setDateOfBirth(localDate);

                    userToUpdate.setFirstName(req.getParameter("firstName"));
                    userToUpdate.setLastName(req.getParameter("lastName"));
                    userToUpdate.setPassword(req.getParameter("password"));

                    workingDao.saveOrUpdate(userToUpdate);

                    // Forward to the dashboard page
                    RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
                    dispatcher.forward(req, resp);
                    break;
                    //</editor-fold>
            }

        } else {
            // Return back to the dashboard
            req.setAttribute("error", "An unknown error has occurred.  Please try again.");
            RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
            dispatcher.forward(req, resp);
        }
    }
}