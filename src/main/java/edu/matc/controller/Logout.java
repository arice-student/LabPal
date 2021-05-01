package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Invalidate a user session to log them out of the application.
 * Source code obtained from https://kodejava.org/how-do-i-invalidate-users-session/
 */

@WebServlet(
        urlPatterns = {"/logout"}
)

public class Logout extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        // Invalidate the session and removes any attribute related to it
        session.invalidate();

        // Get an HttpSession related to this request, if no session exist don't
        // create a new one. This is just a check to see after invalidation the
        // session will be null.
        session = request.getSession(false);
        logger.debug("Session: " + session);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/logout.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}