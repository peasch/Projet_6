package com.lade.Controller;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
import com.lade.Entity.User;
import com.lade.Service.ReservationService;
import com.lade.Service.TopoService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Scope("session")
public class AdministrationController {
    @Autowired
    private UserService userService;
    @Autowired
    private TopoService topoService;
    @Autowired
    private ReservationService reservationService;

    @RequestMapping(value = "/administration", method = RequestMethod.GET)
    public String pageAdmin(HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        if (userService.isAdmin(user)){
            model.addAttribute("user", user);
            model.addAttribute("admin", user.getAdmin());
            return userService.userConnected(session,  "/account/pageAdmin");
        }else {
            return userService.userConnected(session, "/account/notAdmin");
        }
    }

    @RequestMapping(value = "/userList", method = RequestMethod.GET)
    public String userList(HttpSession session, ModelMap model) {
        User user = (User) session.getAttribute("user");
        if (userService.isAdmin(user)){
            Boolean roleAdmin=true;
            model.addAttribute("user", user);
            model.addAttribute("admin", user.getAdmin());
            model.addAttribute("userList",userService.userList());
            model.addAttribute("roleAdmin",roleAdmin);
            return userService.userConnected(session,  "/account/pageAdmin");
        }else {
            return userService.userConnected(session, "/account/notAdmin");
        }
    }

    @RequestMapping(value = "/profil/{userId}", method = RequestMethod.GET)
    public String profileUser(@PathVariable(name = "userId") Integer id, HttpSession session, ModelMap model) {
        User admin =(User) session.getAttribute("user");
        if (userService.isAdmin(admin)) {
            User user = userService.findById(id);
            List<Topo> topos = topoService.findByUser(user);
            Integer size = topos.size();
            List<Reservation> reservations = reservationService.findResaByOwner(user);
            List<Reservation> resaEnCours = reservationService.findResaByCaller(user);
            model.addAttribute("user", user);
            model.addAttribute("topos", topos);
            model.addAttribute("reservations", reservations);
            model.addAttribute("resaEnCours", resaEnCours);
            model.addAttribute("size", size);
            return userService.userConnected(session, "/account/profile");
        }else{
            return userService.userConnected(session, "/account/notAdmin");
        }
    }

    @RequestMapping(value="/user/{userId}/upgrade",method = RequestMethod.GET)
    public String upgradeUser(@PathVariable(name="userId")Integer id, HttpSession session, ModelMap model){
        User admin =(User) session.getAttribute("user");
        if (userService.isAdmin(admin)) {
            User user = userService.findById(id);
            user.setMember(true);
            userService.upgradeMember(user);
            model.addAttribute("user", user);
            return userService.userConnected(session, "/account/membered");
        }else {
            return userService.userConnected(session, "/account/notAdmin");
        }
    }
}
