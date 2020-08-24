package com.lade.Controller;


import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Service.RouteService;
import com.lade.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/route/{routeId}", method = RequestMethod.GET)
    public String routeDescribe(@PathVariable(name = "routeId") Integer id, ModelMap model, HttpSession session) {
        if (userService.userIsConnected(session)) {
            Route route = routeService.find(id);
            List<Length> lengthes = routeService.lengthes(route);
            model.addAttribute("route", route);
            model.addAttribute("sector", route.getSector());
            model.addAttribute("lengthes", lengthes);
            return "routeDescribe";
        } else {
            return "/account/notConnected";
        }
    }


}
