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
        urlPatterns = {"/processForm"}
)

public class ProcessForm extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String redirectURL = "/myDashboard.jsp";
        PrintWriter out = resp.getWriter();

        // Confirm that the form was submitted
        if (req.getParameterMap().containsKey("submit")) {

            // Determine the search type and create the appropriate Dao based on that search type
            String getSubmitType = req.getParameter("submit");
            GenericDao workingDao;
            int insertStatus;

            switch (getSubmitType) {
                //<editor-fold desc="Process Client">
                case "process_client":
                    // redirectURL = "/clientform.jsp";
                    workingDao = new GenericDao(Client.class);

                    Client newClient = new Client();
                    newClient.setName(req.getParameter("clientName"));

                    // Add the Client to the database
                    insertStatus = workingDao.insert(newClient);

                    // Confirm that the Client was added to the database
                    if (insertStatus != 0) {

                        req.setAttribute("success", "Client Name: " + newClient.getName() + " has been created.");

                        // Forward to the dashboard page
                        RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
                        dispatcher.forward(req, resp);
                    }
                    break;
                    //</editor-fold>

                //<editor-fold desc="Process ContactUs">
                case "contactUs":
                    redirectURL = "/contact.jsp";
                    workingDao = new GenericDao(ContactForm.class);

                    ContactForm newContactForm = new ContactForm();
                    newContactForm.setEmail(req.getParameter("email"));
                    newContactForm.setMessage(req.getParameter("message"));

                    LocalDate currentDate = LocalDate.now();
                    newContactForm.setDate(currentDate);
                    logger.debug("Current Date:" + newContactForm.getDate());

                    // Add the ContactForm to the database
                    insertStatus = workingDao.insert(newContactForm);

                    // Confirm that the Client was added to the database
                    if (insertStatus != 0) {

                        req.setAttribute("success", "The Contact Form has been submitted.");

                        // Forward to the dashboard page
                        RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
                        dispatcher.forward(req, resp);
                    }
                    break;
                    //</editor-fold>

                case "method_name":
            }
        } else {
            logger.debug("The entire form was not filled out?");
            // Return back to the dashboard
            req.setAttribute("error", "There was an issue with the form completion.  Please try again.");
            RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
            dispatcher.forward(req, resp);
        }
    }
}