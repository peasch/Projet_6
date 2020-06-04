package com.lade.Controller;

import com.lade.Dao.RouteDao;
import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
import com.lade.Service.SectorService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.persistence.EntityManager;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SectorController {
    @Autowired
    private SpotDao spotDao;

    @Autowired
    private SectorDao sectorDao;
    @Autowired
    private RouteDao routeDao;
    @Autowired
    private SectorService sectorService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.GET)
    public String addSector(@PathVariable Integer spotId,ModelMap model,HttpSession  session) {
       /* Spot spot =spotDao.find(spotId);
        model.addAttribute("spot",spot);*/
       model.addAttribute("spotId",spotId);
        return  userService.userConnected(session,"addSector");
    }

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.POST)
    public String addedSector(@PathVariable(name = "spotId") Integer id, @RequestParam String name, @RequestParam String description, HttpSession session,ModelMap model) {
        User user = (User) session.getAttribute("user");
        Spot spot =spotDao.find(id);
        model.addAttribute("spot",spot);
        model.addAttribute("sector", sectorDao.ajouter(sectorService.toSector(name, description,spot)));
        List<Sector> sectors = sectorDao.lister(spot);
        model.addAttribute("sectors", sectors);
        return  userService.userConnected(session,"addedSector");
    }

    @RequestMapping(value = "/sector/{sectorId}", method = RequestMethod.GET)
    public String sectorDescribe(@PathVariable(name = "sectorId") Integer id, ModelMap model,HttpSession session) {
        Sector sector = sectorDao.find(id);
        List<Route> routes = routeDao.listerRoute(sector);
        model.addAttribute("sector",sector);
model.addAttribute("spot",sector.getSpot());
        model.addAttribute("routes",routes);
        return  userService.userConnected(session,"sectorDescribe");
    }

}
