package com.lade.Controller;

import com.lade.Dao.DaoFactory;
import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/AddSpotServlet")
public class AddSpotServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SpotDao spotDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.spotDao = daoFactory.getSpotDao();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Spot spot = new Spot();
        spot.setUserId((Integer)session.getAttribute("userId"));
        spot.setName(request.getParameter("nom"));
        spot.setAdress(request.getParameter("adresse"));
        spot.setLatitude(request.getParameter("latitude"));
        spot.setLongitude(request.getParameter("longitude"));

        spotDao.ajouter(spot);
        request.setAttribute("spots", spotDao.lister());
        this.getServletContext().getRequestDispatcher("/WEB-INF/addedSpot.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/addSpot.jsp").forward(request, response);
    }
}
