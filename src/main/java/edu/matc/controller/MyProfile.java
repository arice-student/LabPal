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
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        urlPatterns = {"/myProfile"}
)

public class MyProfile extends HttpServlet {

    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GenericDao userDao = new GenericDao(User.class);

        String userName = req.getUserPrincipal().getName();

        List<User> user = userDao.getByPropertyEqual("userName", userName);
        User thisUser = user.get(0);
        req.setAttribute("userInfo", thisUser);

        RequestDispatcher dispatcher = req.getRequestDispatcher("myProfile.jsp");
        dispatcher.forward(req, resp);
    }
}