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

import javax.servlet.http.HttpSession;

@Controller
public class ReservationController {
    @Autowired
    private TopoService topoService;
    @Autowired
    private UserService userService;
    @Autowired
    private ReservationService reservationService;


    @RequestMapping(value = "/topos/{topoId}/resa", method = RequestMethod.GET)
    public String resaTopo(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Topo topo = topoService.find(id);
            model.addAttribute("topo", topo);
            model.addAttribute("owner", topo.getOwner());
            model.addAttribute("user", session.getAttribute("user"));
            return "reservations/topoResa";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/topos/{topoId}/resaRequest", method = RequestMethod.POST)
    public String reservedTopo(@PathVariable(name = "topoId") Integer id, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            User caller = (User) session.getAttribute("user");
            Topo topo = topoService.find(id);
            reservationService.add(caller,topo);
            model.addAttribute("topo", topo);
            return "reservations/resaDemanded";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/reservation/accept/{reservationId}", method = RequestMethod.GET)
    public String acceptResa(@PathVariable(name = "reservationId") Integer id, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            Reservation resa = reservationService.acceptResa(reservationService.findById(id));
            model.addAttribute("resa",resa);
            return "reservations/resaDemanded";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value="/reservation/cancel/{reservationId}",method = RequestMethod.GET)
    public String cancelResa(@PathVariable(name = "reservationId") Integer id, HttpSession session, ModelMap model){
        if (userService.userIsConnected(session)) {
            Reservation resa = reservationService.acceptResa(reservationService.findById(id));
            reservationService.cancelResa(resa);
            return "reservations/resaCancelled";
        } else {
            return "/account/notConnected";
        }
    }

    @RequestMapping(value = "/reservation/refuse/{reservationId}", method = RequestMethod.GET)
    public String refuseResa(@PathVariable(name = "reservationId") Integer id, HttpSession session, ModelMap model) {
        if (userService.userIsConnected(session)) {
            Reservation resa = reservationService.refuse(reservationService.findById(id));
            model.addAttribute("resa",resa);
            return "reservations/resaRefused";
        } else {
            return "/account/notConnected";
        }
    }
}
