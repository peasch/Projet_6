package com.lade.Controller;

import com.lade.Entity.Sector;
import com.lade.Entity.Spot;
import com.lade.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;


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

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.GET)
    public String addSector(@PathVariable Integer spotId, ModelMap model, HttpSession session) {
        model.addAttribute("spotId", spotId);
        model.addAttribute("spot", spotService.find(spotId));
        return userService.userConnected(session, "/sectors/addSector");
    }

    @RequestMapping(value = "/spots/{spotId}/sector/add", method = RequestMethod.POST)
    public String addedSector(@PathVariable(name = "spotId") Integer id, @RequestParam String name, @RequestParam String description, HttpSession session, ModelMap model) {
        Spot spot = spotService.find(id);
        model.addAttribute("spot", spot);
        model.addAttribute("sector", sectorService.ajouter(name, description, spot));
        model.addAttribute("sectors", sectorService.lister(spot));
        return userService.userConnected(session, "/sectors/addedSector");
    }

    @RequestMapping(value = "/sector/{sectorId}", method = RequestMethod.GET)
    public String sectorDescribe(@PathVariable(name = "sectorId") Integer id, ModelMap model, HttpSession session) {
        Sector sector = sectorService.find(id);
        model.addAttribute("sector", sector);
        model.addAttribute("spot", sector.getSpot());
        model.addAttribute("routes", routeService.routes(sector));
        return userService.userConnected(session, "/sectors/sectorDescribe");
    }

}
