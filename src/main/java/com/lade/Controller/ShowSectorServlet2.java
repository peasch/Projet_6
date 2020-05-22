package com.lade.Controller;

import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Service.SpotService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ShowSectorServlet2")
public class ShowSectorServlet2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SectorDao sectorDao;
    private SpotService spotService;
    private SpotDao spotDao;
    private String spotId;

   /* public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.spotDao = daoFactory.getSpotDao();
        this.sectorDao = daoFactory.getSectorDao();

    }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer number = Integer.parseInt(request.getParameter(spotId));
        request.setAttribute("sectors",sectorDao.lister(number));
        this.getServletContext().getRequestDispatcher("/WEB-INF/showSector2.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
