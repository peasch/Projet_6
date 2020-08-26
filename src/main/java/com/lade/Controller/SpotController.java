package com.lade.Controller;

import com.lade.Entity.Commentaire;
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
public class SpotController {

    @Autowired
    private UserService userService;
    @Autowired
    private SpotService spotService;
    @Autowired
    private SectorService sectorService;
    @Autowired
    private CommentaireService commentaireService;

    @RequestMapping(value = "/spots/{spotId}", method = RequestMethod.GET)
    public String spotdescribe(@PathVariable(name = "spotId") Integer id, ModelMap model, HttpSession session) {
        Spot spot = spotService.find(id);
        User user = (User) session.getAttribute("user");
        if (userService.isAdmin(user)) {
            Boolean roleAdmin = true;
            model.addAttribute("roleAdmin", roleAdmin);
        }
        model.addAttribute("spot", spot);
        model.addAttribute("user", user);
        model.addAttribute("sectors", sectorService.lister(spot));
        List<Commentaire> comments = commentaireService.findBySpot(spot);
        model.addAttribute("comments", comments);
        return userService.userConnected(session, "spot/spotDescribe");
    }

    @RequestMapping(value = "/spots", method = RequestMethod.GET)
    public String listSpot(ModelMap model, HttpSession session) {
        model.addAttribute("spots", spotService.lister());
        return userService.userConnected(session, "spot/spots");
    }

    @RequestMapping(value = "/spots/add", method = RequestMethod.GET)
    public String addSpot(ModelMap model,HttpSession session) {
        model.addAttribute("regions", spotService.searchRegion());
        model.addAttribute("countries", spotService.searchCountry());
        return userService.userConnected(session, "spot/addSpot");
    }

    @RequestMapping(value = "/spots/added", method = RequestMethod.POST)
    public String addedSpot(@RequestParam String name, @RequestParam String adress, @RequestParam String latitude, @RequestParam String longitude, @RequestParam String region, @RequestParam String country,@RequestParam String otherRegion,@RequestParam String otherCountry, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if ( country.isEmpty()){
            country=otherCountry;
        }
        if(region.isEmpty()){
            region=otherRegion;
        }
        session.setAttribute("spot", spotService.ajouter(name, adress, latitude, longitude, region, country, user));
        session.setAttribute("userName", user.getUserName());
        return userService.userConnected(session, "spot/addedSpot");
    }

    @RequestMapping(value = "/spot/{spotId}/approuve", method = RequestMethod.GET)
    public String approuveSpot(@PathVariable(name = "spotId") Integer id, ModelMap model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Spot spot = spotService.find(id);
        if (userService.isMember(user)) {
            spot = spotService.approuve(spot);
            model.addAttribute("spot", spot);
            model.addAttribute("approuve",true);
            return userService.userConnected(session, "/spot/approuved");
        } else {
            model.addAttribute("role", "member");
            return userService.userConnected(session, "/account/notAdmin");
        }
    }

    @RequestMapping(value = "/spot/{spotId}/downgrade", method = RequestMethod.GET)
    public String downgradeSpot(@PathVariable(name = "spotId") Integer id, ModelMap model, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Spot spot = spotService.find(id);
        if (userService.isAdmin(user)) {
            Boolean roleAdmin =true;
            model.addAttribute("roleAdmin",roleAdmin);
            if (spot.getOfficialLade()){
            spot= spotService.downgrade(spot);
            model.addAttribute("spot", spot);
            model.addAttribute("approuve",false);
            return userService.userConnected(session, "/spot/approuved");
            }else{
                model.addAttribute("impossible",true);
                model.addAttribute("spot", spot);
                return userService.userConnected(session, "/spot/approuved");
            }
        }else {

            return userService.userConnected(session, "/account/notAdmin");
        }
    }
}
