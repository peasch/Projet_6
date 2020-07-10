package com.lade.Controller;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import com.lade.Service.ReservationService;
import com.lade.Service.SpotService;
import com.lade.Service.TopoService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Scope("session")
public class AccountController {

    @Autowired
    private UserService userService;
    @Autowired
    private TopoService topoService;
    @Autowired
    private ReservationService reservationService;
    @Autowired
    private SpotService spotService;

    @RequestMapping(value = "/connexion", method = RequestMethod.GET)
    public String connexion(ModelMap model) {
        model.addAttribute("lastSpot", spotService.findLast());
        return "connexion";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("username") String userName, @RequestParam("password") String password, HttpSession session, ModelMap model) {
        if (userService.existingUser(userName)) {
            User conn = userService.findUserByUserName(userName);
            model.addAttribute("lastSpot", spotService.findLast());
            if (conn.getPassword().equals(password)) {
                session.setAttribute("user", conn);
                session.setAttribute("userName", conn.getUserName());
                return "connected";
            } else {

                return "errorconnect";
            }
        } else {
            Boolean exist = false;
            model.addAttribute("exist", exist);
            return "errorconnect";
        }
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(HttpSession session) {
        if (session.getAttribute("userName") != null) {
            session.invalidate();
            return "alreadyConnected";

        } else {
            return "registration";
        }
    }

    @RequestMapping(value = "/registered", method = RequestMethod.POST)
    public String registered(@RequestParam("username") String username, @RequestParam("nom") String name,
                             @RequestParam("prenom") String firstName, @RequestParam("email") String email,
                             @RequestParam("password") String password, HttpSession session) {
        session.setAttribute("user", userService.addUser(username, name, firstName, password, email));
        return "addedUser";
    }

    @RequestMapping(value = "/disconnect", method = RequestMethod.GET)
    public String deconnexion(HttpSession session) {
        session.invalidate();
        return "disconnected";
    }

    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String profile(HttpSession session, ModelMap model) {
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
        return userService.userConnected(session, "profile");
    }


}
