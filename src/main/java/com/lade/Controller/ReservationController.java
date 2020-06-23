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
import java.util.Date;

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
        Topo topo = topoService.find(id);
        model.addAttribute("topo", topo);
        model.addAttribute("owner", topo.getOwner());
        model.addAttribute("user", session.getAttribute("user"));
        return userService.userConnected(session, "topoResa");
    }

    @RequestMapping(value = "/topos/{topoId}/resaRequest", method = RequestMethod.POST)
    public String reservedTopo(@PathVariable(name = "topoId") Integer id, HttpSession session, ModelMap model) {
        User caller = (User) session.getAttribute("user");
        Topo topo = topoService.find(id);
        long millis = System.currentTimeMillis();
        Date date = new Date(millis);
        Reservation resa = reservationService.toResa(caller, date, topo);
        reservationService.add(resa);
        model.addAttribute("topo", topo);
        return userService.userConnected(session, "resaDemanded");
    }

    @RequestMapping(value = "/reservation/accept/{reservationId}", method = RequestMethod.GET)
    public String acceptResa(@PathVariable(name = "reservationId") Integer id, HttpSession session, ModelMap model) {
        Reservation resa = reservationService.acceptResa(reservationService.findById(id));
        model.addAttribute("resa",resa);
        resa.getTopo().setAvailable(false);
        return userService.userConnected(session, "resaDemanded");
    }
}
