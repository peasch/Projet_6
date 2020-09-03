package com.lade.Controller;


import com.lade.Entity.*;
import com.lade.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

    @Autowired
    private UserService userService;

    @Autowired
    private SpotService spotService;
    @Autowired
    private SectorService sectorService;
    @Autowired
    private CommentaireService commentaireService;
    @Autowired
    private LengthService lengthService;

    @RequestMapping(value = "/route/{routeId}", method = RequestMethod.GET)
    public String routeDescribe(@PathVariable(name = "routeId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Route route = routeService.find(id);
            Sector sector = route.getSector();
            Spot spot = sector.getSpot();
            List<Length> lengthes = routeService.lengthes(route);
            model.addAttribute("route", route);
            model.addAttribute("sector", sector);
            model.addAttribute("spot", spot);
            model.addAttribute("lengthes", lengthes);
            return "/routes/routeDescribe";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/sector/{sectorId}/route/add", method = RequestMethod.GET)
    public String addedSector(@PathVariable(name = "sectorId") Integer id, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            Sector sector = sectorService.find(id);
            Spot spot = sector.getSpot();
            User user = (User) session.getAttribute("user");
            if (userService.isAdmin(user)) {
                Boolean roleAdmin = true;
                model.addAttribute("roleAdmin", roleAdmin);
            }
            Route route = routeService.ajouter(sector);
            model.addAttribute("spot", spot);
            model.addAttribute("user", user);
            model.addAttribute("routes", routeService.routes(sector));

            return "/sectors/sectorDescribe";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/route/{routeId}/length/add", method = RequestMethod.GET)
    public String addSector(@PathVariable Integer routeId, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Route route = routeService.find(routeId);
            Sector sector= route.getSector();
            Spot spot = sector.getSpot();
            model.addAttribute("spot", spot);
            model.addAttribute("route", route);
            return "/routes/addLength";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/route/{routeId}/length/add", method = RequestMethod.POST)
    public String addedSector(@PathVariable(name = "routeId") Integer id, @RequestParam Integer distance, @RequestParam String rating, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            Route route = routeService.find(id);
            User user = (User) session.getAttribute("user");
            if (userService.isAdmin(user)) {
                Boolean roleAdmin = true;
                model.addAttribute("roleAdmin", roleAdmin);
            }
            lengthService.ajouter(route,distance,rating);
            Sector sector = route.getSector();
            Spot spot = sector.getSpot();
            List<Length> lengthes = routeService.lengthes(route);
            model.addAttribute("route", route);
            model.addAttribute("sector", sector);
            model.addAttribute("spot", spot);
            model.addAttribute("lengthes", lengthes);
            return "/routes/routeDescribe";
        } else {
            return "/account/notConnected";
        }
    }
}
