package edu.matc.controller;


import edu.matc.entity.Client;
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
 * A simple servlet to welcome the client.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/processClient"}
)

public class ProcessClient extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GenericDao clientDao = new GenericDao(Client.class);
        logger.debug("ClientDao value is: " + clientDao);
        logger.debug("The 'submit parameter value is:" + req.getParameter("submit"));

        // Confirm that the form was submitted
        if (req.getParameter("submit").equals("process_client")) {

            logger.debug("The client form was submitted.");

            logger.debug("Client Name: " + req.getParameter("clientName"));

            // Confirm that the entire form was filled out
            if (req.getParameter("clientName") != null) {

                // If yes, create a new Client and add the form information
                Client newClient = new Client();
                newClient.setName(req.getParameter("clientName"));

                logger.debug("Client Information: " + newClient);

                // Add the Client to the database
                int insertStatus = clientDao.insert(newClient);

                logger.debug("Was Client Inserted: " + insertStatus);

                // Confirm that the Client was added to the database
                if (insertStatus != 0) {

                    // Create a newClient Attribute to display the information to the JSP page
                    req.setAttribute("newClient", newClient);

                    // Forward to the dashboard page
                    RequestDispatcher dispatcher = req.getRequestDispatcher("/clientform.jsp");
                    dispatcher.forward(req, resp);
                }

            } else {
                logger.debug("The entire form was not filled out?");
                // Return the client back to the form since it was not fully completed
                req.setAttribute("error", "There was an issue with the form completion.  Please try again.");
                RequestDispatcher dispatcher = req.getRequestDispatcher("/clientform.jsp");
                dispatcher.forward(req, resp);
            }

        } else {
            // Send the client to a 404 error page since the form didn't submit properly
            req.setAttribute("error", "An unknown error has occurred.  Please try again.");
            RequestDispatcher dispatcher = req.getRequestDispatcher("/pageNotFound404.jsp");
            dispatcher.forward(req, resp);
        }
    }
}