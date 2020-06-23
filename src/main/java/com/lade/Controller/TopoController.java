package com.lade.Controller;

import com.lade.Entity.Reservation;
import com.lade.Entity.Spot;
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
import java.text.SimpleDateFormat;
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
        model.addAttribute("topos",topoService.toposWithoutUsers((User) session.getAttribute("user")));
        return userService.userConnected(session,"topos");
    }

    @RequestMapping(value = "/topos/{topoId}", method = RequestMethod.GET)
    public String topodescribe(@PathVariable(name = "topoId") Integer id, ModelMap model, HttpSession session) {
        Topo topo = topoService.find(id);
        model.addAttribute("topo",topo);
        model.addAttribute("owner", topo.getOwner());
        model.addAttribute("user",session.getAttribute("user"));
        return  userService.userConnected(session,"topoDescribe");
    }

    @RequestMapping(value = "/topos/add", method = RequestMethod.GET)
    public String addSpot(HttpSession session) {
        return  userService.userConnected(session, "addTopo");
    }

    @RequestMapping(value = "/topos/added", method = RequestMethod.POST)
    public String addedSpot(@RequestParam String name, @RequestParam String apercu, @RequestParam String parution, HttpSession session,ModelMap model) {
        User user = (User) session.getAttribute("user");
        model.addAttribute("topo", topoService.ajouter(apercu,name,parution, user));
        model.addAttribute("userName", user.getUserName());
        return  userService.userConnected(session,"addedTopo");
    }





}
