package com.lade.Controller;

import com.lade.Entity.Commentaire;
import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import com.lade.Entity.User;
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
public class SectorController {
    @Autowired
    private RouteService routeService;
    @Autowired
    private SectorService sectorService;
    @Autowired
    private UserService userService;
    @Autowired
    private SpotService spotService;
    @Autowired
    private CommentaireService commentaireService;

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.GET)
    public String addSector(@PathVariable Integer spotId, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            model.addAttribute("spotId", spotId);
            model.addAttribute("spot", spotService.find(spotId));
            return "sectors/addSector";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.POST)
    public String addedSector(@PathVariable(name = "spotId") Integer id, @RequestParam String name, @RequestParam String description, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            Spot spot = spotService.find(id);
            User user = (User) session.getAttribute("user");
            if (userService.isAdmin(user)) {
                Boolean roleAdmin = true;
                model.addAttribute("roleAdmin", roleAdmin);
            }
            model.addAttribute("spot", spot);
            model.addAttribute("user", user);
            List<Commentaire> comments = commentaireService.findBySpot(spot);
            model.addAttribute("comments", comments);
            model.addAttribute("sector", sectorService.ajouter(name, description, spot));
            model.addAttribute("sectors", sectorService.lister(spot));
            return "sectors/addedSector";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/sector/{sectorId}", method = RequestMethod.GET)
    public String sectorDescribe(@PathVariable(name = "sectorId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Sector sector = sectorService.find(id);
            model.addAttribute("sector", sector);
            model.addAttribute("spot", sector.getSpot());
            model.addAttribute("routes", routeService.routes(sector));
            return "sectors/sectorDescribe";
        } else {
            return "/account/notConnected";
        }
    }

}
