package com.lade.Controller;

import com.lade.Dao.DaoFactory;
import com.lade.Dao.UserDao;
import com.lade.Dao.UserDaoImpl;
import com.lade.Entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
     private UserDao userDao;
    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.userDao = daoFactory.getUserDao();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setName(request.getParameter("nom"));
        user.setFirstName(request.getParameter("prenom"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setUserName(request.getParameter("Username"));
        userDao.ajouter(user);
        request.setAttribute( "user",user);
        this.getServletContext().getRequestDispatcher("/WEB-INF/addedUser.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/addUser.jsp").forward(request, response);
    }
}
