package com.lade.Controller;


import com.lade.Dao.RouteDao;
import com.lade.Dao.SectorDao;
import com.lade.Dao.SpotDao;
import com.lade.Entity.Length;
import com.lade.Entity.Route;
import com.lade.Entity.Sector;
import com.lade.Service.SectorService;
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
    private SpotDao spotDao;
    @Autowired
    private SectorDao sectorDao;
    @Autowired
    private RouteDao routeDao;
    @Autowired
    private SectorService sectorService;
@Autowired
private UserService userService;

    @RequestMapping(value = "/route/{routeId}", method = RequestMethod.GET)
    public String routeDescribe(@PathVariable(name = "routeId") Integer id, ModelMap model, HttpSession session) {
        Route route=routeDao.find(id);
        List<Length> lengthes = routeDao.lister(route);
        model.addAttribute("route",route);
model.addAttribute("sector", route.getSector());
        model.addAttribute("lengthes",lengthes);
        return  userService.userConnected(session,"routeDescribe");
    }




}
