package com.lade.Controller;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import com.lade.Service.ReservationService;
import com.lade.Service.TopoService;
import com.lade.Service.UserService;
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
public class TopoController {
    @Autowired
    private UserService userService;
    @Autowired
    private TopoService topoService;
    @Autowired
    private ReservationService reservationService;

    @RequestMapping(value = "/topos", method = RequestMethod.GET)
    public String listTopo(ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            model.addAttribute("topos", topoService.toposWithoutUsers((User) session.getAttribute("user")));
            return  "/topos/topos";
        } else {
            return "account/errorconnect";
        }
    }

    @RequestMapping(value = "/topos/{topoId}", method = RequestMethod.GET)
    public String topodescribe(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Topo topo = topoService.find(id);
            model.addAttribute("topo", topo);
            model.addAttribute("owner", topo.getOwner());
            model.addAttribute("user", session.getAttribute("user"));
            return "/topos/topoDescribe";
        } else {
            return "account/errorconnect";
        }
    }

    @RequestMapping(value = "/topos/add", method = RequestMethod.GET)
    public String addSpot(ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            model.addAttribute("regions", topoService.searchRegion());
            model.addAttribute("countries", topoService.searchCountry());
            model.addAttribute("lastTopo", topoService.findLast());
            return  "/topos/addTopo";
        } else {
            return "account/errorconnect";
        }
    }

    @RequestMapping(value = "/topos/added", method = RequestMethod.POST)
    public String addedSpot(@RequestParam String name, @RequestParam String apercu, @RequestParam String parution, @RequestParam String region, @RequestParam String country, @RequestParam String otherRegion, @RequestParam String otherCountry, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            if (country.isEmpty()) {
                country = otherCountry;
            }
            if (region.isEmpty()) {
                region = otherRegion;
            }
            User user = (User) session.getAttribute("user");
            model.addAttribute("topo", topoService.ajouter(apercu, name, parution, region, country, user));
            model.addAttribute("userName", user.getUserName());
            return  "/topos/addedTopo";
        } else {
            return "account/errorconnect";
        }
    }

    @RequestMapping(value = "/topo/{reservationId}/retourdispo", method = RequestMethod.GET)
    public String retourDispo(@PathVariable(name = "reservationId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Reservation reservation = reservationService.findById(id);
            reservation.setReturnDate(reservationService.dateToday());
            reservation.setReturned(true);
            reservationService.update(reservation);
            Topo topo = reservation.getTopo();
            topoService.retourDispo(topo);
            return  "/topos/retourDispo";
        } else {
            return "account/errorconnect";
        }
    }


    @RequestMapping(value = "/topo/{topoId}/disable", method = RequestMethod.GET)
    public String setIndispo(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Topo topo = topoService.find(id);
            topoService.setIndispo(topo);
            User user = (User) session.getAttribute("user");
            List<Topo> topos = topoService.findByUser(user);
            Integer size = topos.size();
            List<Reservation> reservations = reservationService.findResaByOwner(user);
            List<Reservation> resaEnCours = reservationService.findResaByCaller(user);
            model.addAttribute("user", user);
            model.addAttribute("topos", topos);
            model.addAttribute("reservations", reservations);
            model.addAttribute("resaEnCours", resaEnCours);
            model.addAttribute("size", size);
            return "account/profile";
        } else {
            return "account/errorconnect";
        }
    }

    @RequestMapping(value = "/topo/{topoId}/enable", method = RequestMethod.GET)
    public String setDispo(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Topo topo = topoService.find(id);
            topoService.setDispo(topo);
            User user = (User) session.getAttribute("user");
            List<Topo> topos = topoService.findByUser(user);
            Integer size = topos.size();
            List<Reservation> reservations = reservationService.findResaByOwner(user);
            List<Reservation> resaEnCours = reservationService.findResaByCaller(user);
            model.addAttribute("user", user);
            model.addAttribute("topos", topos);
            model.addAttribute("reservations", reservations);
            model.addAttribute("resaEnCours", resaEnCours);
            model.addAttribute("size", size);
            return "account/profile";
        } else {
            return "account/errorconnect";
        }
    }
}
