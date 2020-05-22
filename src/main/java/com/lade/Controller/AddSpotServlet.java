package com.lade.Controller;

import com.lade.Dao.SpotDao;
import com.lade.Dao.UserDao;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.config.LadeConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

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



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(LadeConfig.class);
        SpotDao spotDao = context.getBean(SpotDao.class);
        HttpSession session = request.getSession();

        Spot spot = new Spot();
        spot.setUser((User)session.getAttribute("user"));
        spot.setName(request.getParameter("nom"));
        spot.setAdress(request.getParameter("adresse"));
        spot.setLatitude(request.getParameter("latitude"));
        spot.setLongitude(request.getParameter("longitude"));

        spotDao.ajouter(spot);
        request.setAttribute("spots", spotDao.lister());
        request.setAttribute("user",spot.getUser());
        this.getServletContext().getRequestDispatcher("/WEB-INF/addedSpot.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/addSpot.jsp").forward(request, response);
    }
}
