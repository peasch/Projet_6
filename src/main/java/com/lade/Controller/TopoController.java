package com.lade.Controller;

import com.lade.Entity.Reservation;
import com.lade.Entity.Topo;
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
import java.util.Date;

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
        model.addAttribute("topos", topoService.toposWithoutUsers((User) session.getAttribute("user")));
        return userService.userConnected(session,"/topos/topos");
    }

    @RequestMapping(value = "/topos/{topoId}", method = RequestMethod.GET)
    public String topodescribe(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        Topo topo = topoService.find(id);
        model.addAttribute("topo",topo);
        model.addAttribute("owner", topo.getOwner());
        model.addAttribute("user",session.getAttribute("user"));
        return  userService.userConnected(session,"/topos/topoDescribe");
    }

    @RequestMapping(value = "/topos/add", method = RequestMethod.GET)
    public String addSpot(ModelMap model, HttpSession session) {

        model.addAttribute("regions", topoService.searchRegion());
        model.addAttribute("countries", topoService.searchCountry());
        model.addAttribute("lastTopo",topoService.findLast());
        return  userService.userConnected(session, "/topos/addTopo");
    }

    @RequestMapping(value = "/topos/added", method = RequestMethod.POST)
    public String addedSpot(@RequestParam String name, @RequestParam String apercu, @RequestParam String parution,@RequestParam String region,@RequestParam String country, HttpSession session,ModelMap model) {
        User user = (User) session.getAttribute("user");
        model.addAttribute("topo", topoService.ajouter(apercu,name,parution, region, country, user));
        model.addAttribute("userName", user.getUserName());
        return  userService.userConnected(session,"/topos/addedTopo");
    }

    @RequestMapping(value="/topo/{reservationId}/retourdispo",method =RequestMethod.GET )
    public String retourDispo(@PathVariable(name = "reservationId") Integer id, ModelMap model, HttpSession session){

        Reservation reservation = reservationService.findById(id);
        reservation.setReturnDate(reservationService.dateToday());
        reservation.setReturned(true);
        reservationService.update(reservation);
        Topo topo =reservation.getTopo();
        topoService.retourDispo(topo);
        return  userService.userConnected(session,"/topos/retourDispo");
    }



}
