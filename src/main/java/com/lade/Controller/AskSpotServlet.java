package com.lade.Controller;

import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Spot;
import com.lade.Service.SpotService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/AskSpotServlet")
public class AskSpotServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SectorDao sectorDao;
    SpotService spotService =new SpotService();
    private SpotDao spotDao;
    private Spot spot=new Spot();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer number = Integer.parseInt(request.getParameter("spotId"));
        List spots = spotDao.lister();
        spot = spotService.quelSpot(number,spots);
        request.setAttribute("spot",spot);
        this.getServletContext().getRequestDispatcher("/WEB-INF/addSector.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("spots", spotDao.lister());
        this.getServletContext().getRequestDispatcher("/WEB-INF/askSpot.jsp").forward(request, response);
    }
}
