package edu.matc.controller;


import edu.matc.entity.Client;
import edu.matc.entity.Method;
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

        String redirectURL = "/dashboard.jsp";
        PrintWriter out = resp.getWriter();

        if (req.getAttribute("success") != null) {
            String msg = (String) req.getAttribute("success");
            out.print("<h4 class=\"text-center text-success\">" + msg + "</h4>");
        }

        if (req.getAttribute("error") != null) {
            String msg = (String) req.getAttribute("error");
            out.print("<h4 class=\"text-center text-success\">" + msg + "</h4>");
        }

        // Confirm that the form was submitted
        if (req.getParameterMap().containsKey("submit")) {

            // Determine the search type and create the appropriate Dao based on that search type
            String getSubmitType = req.getParameter("submit");
            GenericDao workingDao;

            switch (getSubmitType) {
                case "process_client":
                    redirectURL = "/clientform.jsp";
                    workingDao = new GenericDao(Client.class);

                    Client newClient = new Client();
                    newClient.setName(req.getParameter("clientName"));

                    // Add the Client to the database
                    int insertStatus = workingDao.insert(newClient);

                    // Confirm that the Client was added to the database
                    if (insertStatus != 0) {

                        req.setAttribute("success", "Client Name: " + newClient.getName() + " has been created.");

                        // Create a newClient Attribute to display the information to the JSP page
                        req.setAttribute("newClient", newClient);

                        // Forward to the dashboard page
                        RequestDispatcher dispatcher = req.getRequestDispatcher("/clientform.jsp");
                        dispatcher.forward(req, resp);
                    }
                    break;
                case "method_id":
                case "method_name":
            }
        } else {
            logger.debug("The entire form was not filled out?");
            // Return the client back to the form since it was not fully completed
            req.setAttribute("error", "There was an issue with the form completion.  Please try again.");
            RequestDispatcher dispatcher = req.getRequestDispatcher(redirectURL);
            dispatcher.forward(req, resp);
        }
    }
}