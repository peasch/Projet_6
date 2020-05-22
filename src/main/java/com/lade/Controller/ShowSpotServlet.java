package com.lade.Controller;

import com.lade.Dao.SpotDao;
import com.lade.config.LadeConfig;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

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




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(LadeConfig.class);
        SpotDao spotDao = context.getBean(SpotDao.class);
        request.setAttribute("spots", spotDao.lister());
        this.getServletContext().getRequestDispatcher("/WEB-INF/showSpot.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
