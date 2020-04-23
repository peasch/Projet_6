package com.lade.Controller;

import com.lade.Dao.DaoFactory;
import com.lade.Dao.SpotDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/ShowSpotServlet")
public class ShowSpotServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SpotDao spotDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.spotDao = daoFactory.getSpotDao();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("spots", spotDao.lister());
        this.getServletContext().getRequestDispatcher("/WEB-INF/showSpot.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
