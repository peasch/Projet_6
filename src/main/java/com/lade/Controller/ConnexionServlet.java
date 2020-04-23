package com.lade.Controller;

import com.lade.Dao.DaoFactory;
import com.lade.Dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ConnexionServlet")
public class ConnexionServlet extends HttpServlet {
    private UserDao userDao;
    private int userId;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.userDao = daoFactory.getUserDao();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter("Username");
        String password = request.getParameter("password");
        userId = userDao.existingUser(userName, password);
        if (userId != 0) {
            session.setAttribute("userName", userName);
            session.setAttribute("userId", userId);
            this.getServletContext().getRequestDispatcher("/WEB-INF/connected.jsp").forward(request, response);
        } else {
            String faux = "Mot de passe, ou username erroné !";
            request.setAttribute("faux", faux);

            this.getServletContext().getRequestDispatcher("/WEB-INF/errorconnect.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/connexion.jsp").forward(request, response);
    }
}
